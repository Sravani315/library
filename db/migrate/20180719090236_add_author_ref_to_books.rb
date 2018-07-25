class AddAuthorRefToBooks < ActiveRecord::Migration[5.1]
  def change
    add_refernces :books, :author, foreign_key: true
    add_index :books, :author_id
  end
end
