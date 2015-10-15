class ReceivedEmails < ActiveRecord::Migration
  def change
    create_table :received_emails do |t|
      t.integer      :receiver_id, null: false
      t.integer      :email_id, null: false
      t.timestamps
    end
    add_index :received_emails, :receiver_id
    add_index :received_emails, :email_id
  end
end
