class Api::AllEmailsController < ApplicationController
  def index
    @emails =ElectronicMail.all
            .where('electronic_mails.from = ? OR electronic_mails.to = ?' ,
            current_user.email, current_user.email).page(params[:page])

    render json: {:models => @emails, :page => params[:page], :total_pages => @emails.total_pages}
  end
end
