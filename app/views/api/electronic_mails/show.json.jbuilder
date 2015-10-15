json.extract! @electronic_mail, :id, :author_id, :from, :to, :cc, :bcc, :subject, :body,
     :parent_email_id, :starred?, :important?, :attachment?, :draft?,
     :archived?, :sent_email?
