class District < ApplicationRecord
  belongs_to :amphur
  has_many :users
  has_many :district_zipcodes
  has_many :zipcodes, through: :district_zipcodes
  
  validates :name, :presence => true
  validates :latitude, :presence => true
  validates :longitude, :presence => true
end
