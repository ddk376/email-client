class AddEmailAttachments < ActiveRecord::Migration
  def change
    add_attachment :electronic_mails, :file_avatar
 end
end
