class MallAttachment < ApplicationRecord
  mount_uploader :avatar, AvatarUploader
  belongs_to :mall, dependent: :destroy
end
