class User < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :id_name
      t.timestamps
    end
  end
    
  def down
    drop_table :users
  end
  
end
