class RemoveAttachmentinUsers < ActiveRecord::Migration
  def change
    remove_column :users, :img_avatar_file_name
    remove_column :users, :img_avatar_content_type
    remove_column :users, :img_avatar_file_size
    remove_column :users, :img_avatar_updated_at

    remove_column :users, :file_avatar_file_name
    remove_column :users, :file_avatar_content_type
    remove_column :users, :file_avatar_file_size
    remove_column :users, :file_avatar_updated_at
  end
end
