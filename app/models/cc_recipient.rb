class CcRecipient < ActiveRecord::Base
  belongs_to :email,
    class_name: "ElectronicMail",
    foreign_key: :email_id
end
