class AddColumsToBooks < ActiveRecord::Migration
  def change
  	add_column :books, :ano_name, :string
  	add_column :books, :description, :text
  end
end
