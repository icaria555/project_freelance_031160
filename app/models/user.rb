class User < ApplicationRecord
  belongs_to :province
  belongs_to :amphur
  belongs_to :district
  belongs_to :zipcode
  belongs_to :role
  has_many :order
end
