class Api::ImportantEmailsController < ApplicationController

  def index
    # @emails = (current_user.received_emails.where(is_important: "true") +
    #           current_user.sent_emails.where(is_important: "true")).uniq.page(params[:page])

    # @emails.sort_by {|email| email.created_at}

    @emails =ElectronicMail.all
            .where('electronic_mails.from = ? OR electronic_mails.to = ? AND is_important = true' ,
            current_user.email, current_user.email).page(params[:page])

    render json: {:models => @emails, :page => params[:page], :total_pages => @emails.total_pages}
  end
end
