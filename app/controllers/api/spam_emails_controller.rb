class SpamEmailsController < ApplicationController
  def index
    @emails =ElectronicMail.all
            .where('electronic_mails.from = ? OR electronic_mails.to = ? AND is_spam = true' ,
            current_user.email, current_user.email).page(params[:page])

    render json: {:models => @emails, :page => params[:page], :total_pages => @emails.total_pages}
  end
end
