class DeleteReceivedEmails < ActiveRecord::Migration
  def change
    drop_table :received_emails
  end
end
