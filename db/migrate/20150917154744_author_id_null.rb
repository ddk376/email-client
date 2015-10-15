class AuthorIdNull < ActiveRecord::Migration
  def change
    change_column_null :electronic_mails, :author_id, true
  end
end
