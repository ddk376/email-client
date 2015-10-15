class EmailDispatcher < ApplicationMailer
  default :from => 'admin@example.com'
  def send_email(email, attachment_file_content)
    @email = email
    file = File.open(attachment_file_content.tempfile, "rb")

    attachments[email.file_avatar_file_name] = file.read
    mail(to: @email.to,
         from: @email.from,
         subject: @email.subject,
         body: @email.body,
         cc: @email.cc,
         bcc: @email.bcc,
         reply_to: '')
  end
end
