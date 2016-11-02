class CreateProductTable < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.float :price
      t.float :pv
      t.integer :quantity
      t.string :unit
      t.timestamps
    end
  end
  
  def down
    drop_table :products
  end
end
