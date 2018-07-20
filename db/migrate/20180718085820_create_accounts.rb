class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.string :acount_num
      t.references :supplier

      t.timestamps
    end
    add_index :accounts, :supplier_id
  end
end
