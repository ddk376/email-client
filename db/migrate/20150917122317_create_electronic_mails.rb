class CreateElectronicMails < ActiveRecord::Migration
  def change
    create_table :electronic_mails do |t|
      t.integer      :author_id, null: false
      t.string       :from, null: false
      t.string       :to, null: false
      t.string       :subject
      t.text         :body
      t.integer      :parent_email_id
      t.boolean      :starred?
      t.boolean      :important?
      t.boolean      :attachment?
      t.boolean      :draft?
      t.boolean      :archived?
      t.boolean      :sent_email?
      t.timestamps null: false
    end
  end
end
