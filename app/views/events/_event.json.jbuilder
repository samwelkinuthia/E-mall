json.extract! event, :id, :name, :description, :date, :venue, :hosted_by, :time, :created_at, :updated_at
json.url event_url(event, format: :json)
