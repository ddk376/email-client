class CreateElectronicMailRecipients < ActiveRecord::Migration
  def change
    create_table :electronic_mail_recipients do |t|
      t.integer :email_id, null: false
      t.integer :recipient_id, null: false
      t.timestamps null: false
    end
  end
end
