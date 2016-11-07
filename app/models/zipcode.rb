class Zipcode < ApplicationRecord
  has_many :district_zipcodes
  
  validates :code, :presence => true
end
