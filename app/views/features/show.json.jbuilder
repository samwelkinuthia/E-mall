json.partial! "features/feature", feature: @feature

json.extract! @mall, :id, :name, :description, :featureimage, :mall_id, :created_at, :updated_at
