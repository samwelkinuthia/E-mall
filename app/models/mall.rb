class Mall < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: :address_changed?
  mount_uploader :mallpicture, MallpictureUploader


  has_many :rooms
  has_many :mall_attachments
  accepts_nested_attributes_for :mall_attachments
  has_many :events
  has_many :features

end
