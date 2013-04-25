class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.float :sales_price
      t.integer :customer_id, :null =>false
      t.integer :work_id, :null =>false

      t.timestamps
    end
  end
end
