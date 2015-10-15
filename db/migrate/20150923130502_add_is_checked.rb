class AddIsChecked < ActiveRecord::Migration
  def change
    add_column :electronic_mails, :is_checked, :boolean, default: false;
  end
end
