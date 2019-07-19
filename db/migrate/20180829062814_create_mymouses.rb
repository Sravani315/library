class CreateMymouses < ActiveRecord::Migration[5.1]
  def change
    create_table :mymouses do |t|

      t.timestamps
    end
  end
end
