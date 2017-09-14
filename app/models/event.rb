class Event < ApplicationRecord
  mount_uploader :eventimage, EventimageUploader
  belongs_to :mall
end
