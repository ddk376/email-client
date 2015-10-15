class AddIsTrash < ActiveRecord::Migration
  def change
    add_column :electronic_mails, :is_trash, :boolean, default: false
  end
end
