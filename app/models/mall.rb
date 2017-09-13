class Mall < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: :address_changed?
  mount_uploader :mallpicture, MallpictureUploader


  has_many :rooms, dependent: :destroy
  has_many :mall_attachments, dependent: :destroy
  accepts_nested_attributes_for :mall_attachments

end
