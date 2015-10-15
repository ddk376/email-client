class SetParentIdDefault < ActiveRecord::Migration
  def change
    change_column :electronic_mails, :parent_email_id, :integer, default: nil
  end
end
