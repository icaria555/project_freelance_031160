class Product < ApplicationRecord
  attr_accessor :name, :description, :price, :pv, :quantity, :unit

  validates :name, :presence => true, :uniqueness => { case_sensitive: false }
  validates :price, :presence => true, :numericality => true
  validates :pv, :presence => true, :numericality => true
  validates :quantity, :presence => true, :numericality => { only_integer: true, greater_than_or_equal_to: 0 }
  validates :unit, :presence => true
end
