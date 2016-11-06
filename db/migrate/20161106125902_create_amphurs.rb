class CreateAmphurs < ActiveRecord::Migration[5.0]
  def change
    create_table :amphurs do |t|
      t.belongs_to :province, index:true
      t.string :name
      t.timestamps
    end
  end
end
