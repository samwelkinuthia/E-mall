class Feature < ApplicationRecord
  mount_uploader :featureimage, FeatureimageUploader
  belongs_to :mall
end
