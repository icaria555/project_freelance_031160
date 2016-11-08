class AddColumnUser < ActiveRecord::Migration[5.0]
  def change
    add_reference :users, :province, index: true, foreign_key: true
    add_reference :users, :amphur, index: true, foreign_key: true
    add_reference :users, :district, index: true, foreign_key: true
    add_reference :users, :zipcode, index: true, foreign_key: true
    add_reference :users, :role, index: true, foreign_key: true
  end
end
