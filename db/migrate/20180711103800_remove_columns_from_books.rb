class RemoveColumnsFromBooks < ActiveRecord::Migration[5.1]
  def up
  	add_column :books, :title, :string
  end

  def down
  	remove_column :books, :title, :string
  end
end
