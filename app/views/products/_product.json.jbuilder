json.extract! product, :id, :name, :price, :room_id, :created_at, :updated_at
json.url product_url(product, format: :json)
