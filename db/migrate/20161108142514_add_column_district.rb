class AddColumnDistrict < ActiveRecord::Migration[5.0]
  def change
    add_column :districts, :latitude, :string
    add_column :districts, :longitude, :string
  end
end
