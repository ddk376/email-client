class Api::ElectronicMailsController < ApplicationController

  wrap_parameters false

  def index
    @emails = current_user.received_emails.where(is_draft: "false") #.page(params[:page])
    render json: @emails
    #render json: {:models => @emails, :page => params[:page], :total_pages => @emails.total_pages}
  end

  def create
     @email = current_user.sent_emails.new(email_params)
     @email.from = current_user.email
     recipient_user = User.find_by(email: email_params[:to])

     if @email.save
       @email.recipients.create({recipient_email: email_params[:to]})
       @email.cc_recipients.create({ccrecipient_email: email_params[:cc]}) if email_params[:cc]
       @email.bcc_recipients.create({bccrecipient_email: email_params[:bcc]}) if email_params[:bcc]

       EmailDispatcher.send_email(@email, email_params[:file_avatar]).deliver unless recipient_user
      #  create_recipients(@email)
      #  call_send_grid(@email)
       render json: @email
     else
       render json: @email.errors.full_messages, status: :unprocessable_entity
     end
  end

  def update
    @email = ElectronicMail.find(params[:id])
    if @email.update(email_params)
      render json: @email
    # else
    end
  end

  def show
    @email = ElectronicMail.all.find(params[:id])

    render json: @email
  end
  private

  # def call_send_grid(email)
  #
  #   recipients = email_params[:to]
  #   # cc_recipients = email_params[:cc]
  #   # bcc_recipients = email_params[:bcc]
  #
  #   email.to= recipients.split(",")
  #   # email.cc = cc_recipients.split(",")
  #   # email.bcc = bcc_recipients(",")
  #   EmailDispatcher.send_email(email).deliver_now
  # end

  # def create_recipients(email)
  #   email_params[:to].split(",").each do |recipient_email|
  #     email.recipients.create({recipient_email: recipient_email})
  #   end

    # email_params[:cc].split(",").each do |recipient_email|
    #   email.recipients.create({ccrecipient_email: recipient_email})
    # end
    #
    # email_params[:bcc].split(",").each do |recipient_email|
    #   email.recipients.create({bccrecipient_email: recipient_email})
    # end
  # end

  def email_params
    params.require(:electronic_mail).permit(:to, :subject, :body, :cc, :bcc, :file_avatar, :is_checked, :is_draft, :is_starred, :is_important)
  end
end
