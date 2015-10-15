class SetIsReadDefault < ActiveRecord::Migration
  def change
    change_column :electronic_mails, :is_read, :boolean, :default => false
  end
end
