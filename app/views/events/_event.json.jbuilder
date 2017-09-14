json.extract! event, :id, :name, :description, :starting_date, :ending_date, :starting_time, :ending_time, :mall_id, :created_at, :updated_at
json.url event_url(event, format: :json)
