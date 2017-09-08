class MallAttachment < ApplicationRecord
  mount_uploader :avatar, AvatarUploader
  belongs_to :mall
end
