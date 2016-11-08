class Zipcode < ApplicationRecord
  has_many :users
  has_many :district_zipcodes
  
  validates :code, :presence => true, :uniqueness => true
end
