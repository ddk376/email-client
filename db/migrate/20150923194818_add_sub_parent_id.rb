class AddSubParentId < ActiveRecord::Migration
  def change
    add_column :electronic_mails, :subparent_id, :integer, default: nil
  end
end
