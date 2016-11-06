class District < ApplicationRecord
  belongs_to :amphur
  
  validates :name, :presence => true
end
