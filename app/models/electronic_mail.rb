class ElectronicMail < ActiveRecord::Base
   include PgSearch
   pg_search_scope :custom_search,
     :against => [:to, :from, :subject, :body, :file_avatar_file_name, :cc, :bcc]

   has_attached_file :file_avatar, :default_url => "/files/:style/missing.doc"
   validates_attachment_content_type :file_avatar, :content_type => [
             /\Aimage\/.*\Z/,
             /\Avideo\/.*\Z/,
             "application/pdf",
             "application/vnd.ms-excel",
             "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet",
             "application/msword",
             "application/vnd.openxmlformats-officedocument.wordprocessingml.document",
             "text/plain"]

  has_many :recipients,
    class_name: "ElectronicMailRecipient",
    foreign_key: :email_id
  has_many :cc_recipients,
    class_name: "CcRecipient",
    foreign_key: :email_id
  has_many :bcc_recipients,
    class_name: "BccRecipient",
    foreign_key: :email_id




end
