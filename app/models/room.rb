class Room < ApplicationRecord
  belongs_to :mall
  has_many :products
end
