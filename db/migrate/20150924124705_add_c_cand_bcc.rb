class AddCCandBcc < ActiveRecord::Migration
  def change
    add_column :electronic_mails, :cc, :string
    add_column :electronic_mails, :bcc, :string
  end
end
