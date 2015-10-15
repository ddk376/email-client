class AddAttachmentstoEmail < ActiveRecord::Migration
  def change
     add_attachment :users, :img_avatar
     add_attachment :users, :file_avatar
  end
end
