class Orderproduct < ApplicationRecord
  belongs_to :order
  belongs_to :product
  
  after_initialize :default_values
  
  def default_values
      self.total_price = 0 if self.total_price.nil?
      self.total_pv = 0 if self.total_pv.nil?
  end
  
  validates :quantity, :presence => true, :numericality => { only_integer: true, greater_than_or_equal_to: 0 }
  validates :total_price, :presence => true, :numericality => true
  validates :total_pv, :presence => true, :numericality => true
end
