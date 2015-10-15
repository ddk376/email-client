class ChangeHasSendtoIsRead < ActiveRecord::Migration
  def change
    rename_column :electronic_mails, :has_send, :is_read
    change_column :electronic_mails, :is_draft, :boolean, :default => true
  end
end
