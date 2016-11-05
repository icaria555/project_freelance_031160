class CreateOrderproducts < ActiveRecord::Migration[5.0]

  def change
    create_table :orderproducts do |t|
      t.belongs_to :product, index:true
      t.belongs_to :order, index:true
      t.integer :quantity
      t.float :total_price
      t.float :total_pv
      t.timestamps
    end
  end
  
  def down
    drop_table :orderproducts
  end
end
