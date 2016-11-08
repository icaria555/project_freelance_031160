class Amphur < ApplicationRecord
  belongs_to :province
  has_many :users
  has_many :districts
  
  validates :name, :presence => true
end
