class AlterReceivedEmails < ActiveRecord::Migration
  def change
    remove_column :electronic_mail_recipients, :recipient_id, :integer
    add_column :electronic_mail_recipients, :recipient_email, :string
  end
end
