class Room < ApplicationRecord
  mount_uploader :storeavatar, StoreavatarUploader
  mount_uploader :storeimage, StoreimageUploader
  belongs_to :mall
  has_many :products, dependent: :destroy
end
