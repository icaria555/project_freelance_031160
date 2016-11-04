class Order < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.belongs_to :user, index:true
      t.integer :purchaser_id
      t.integer :saler_id
      t.float :total_price
      t.float :total_pv
      t.timestamps
    end
  end
  
  def down
    drop_table :orders
  end
end
