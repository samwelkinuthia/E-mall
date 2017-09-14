
json.extract! feature, :id, :name, :description, :featureimage, :mall_id, :created_at, :updated_at

json.url feature_url(feature, format: :json)
