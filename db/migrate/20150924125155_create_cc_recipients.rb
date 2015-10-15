class CreateCcRecipients < ActiveRecord::Migration
  def change
    create_table :cc_recipients do |t|
      t.integer :email_id, null: false
      t.string  :ccrecipient_email, null: false
      t.timestamps null: false
    end
  end
end
