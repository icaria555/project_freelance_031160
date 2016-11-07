class CreateDistrictZipcodes < ActiveRecord::Migration[5.0]
  def change
    create_table :district_zipcodes do |t|
      t.belongs_to :district, index:true
      t.belongs_to :zipcode, index:true

      t.timestamps
    end
  end
end
