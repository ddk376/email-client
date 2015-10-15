class Api::DraftEmailsController < ApplicationController

  def index
    @emails = current_user.sent_emails.where(is_draft: "true").page(params[:page])

    render json: {:models => @emails, :page => params[:page], :total_pages => @emails.total_pages}
  end
end
