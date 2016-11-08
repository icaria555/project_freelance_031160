class Role < ApplicationRecord
  has_many :users
  
  validates :name, :presence => true
  validates :level, :presence => true, :numericality => { only_integer: true, greater_than_or_equal_to: 0 }
end
