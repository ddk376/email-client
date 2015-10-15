class CreateBccRecipients < ActiveRecord::Migration
  def change
    create_table :bcc_recipients do |t|
      t.integer :email_id, null: false
      t.string  :bccrecipient_email, null: false
      t.timestamps null: false
    end
  end
end
