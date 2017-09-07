class Mall < ApplicationRecord
  geocoded_by :address

  after_validation :geocode, if: :address_changed?

  has_many :mall_attachments
  accepts_nested_attributes_for :mall_attachments
end
