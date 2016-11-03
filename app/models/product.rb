class Product < ApplicationRecord

  validates :name, :presence => true, :uniqueness => { case_sensitive: false }
  validates :price, :presence => true, :numericality => true
  validates :pv, :presence => true, :numericality => true
  validates :quantity, :presence => true, :numericality => { greater_than_or_equal_to: 0 }
  validates :unit, :presence => true
  
end
