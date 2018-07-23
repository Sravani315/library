class AddColumsToBooks < ActiveRecord::Migration[5.1]
  def change
  	add_column :books, :ano_name, :string
  	add_column :books, :description, :text
  end
end
