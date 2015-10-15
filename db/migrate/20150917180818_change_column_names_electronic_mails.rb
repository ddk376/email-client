class ChangeColumnNamesElectronicMails < ActiveRecord::Migration
  def change
    rename_column :electronic_mails, :starred?, :is_starred
    rename_column :electronic_mails, :important?, :is_important
    rename_column :electronic_mails, :attachment?, :has_attachment
    rename_column :electronic_mails, :draft?, :is_draft
    rename_column :electronic_mails, :archived?, :is_archived
    rename_column :electronic_mails, :sent_email?, :has_send
  end
end
