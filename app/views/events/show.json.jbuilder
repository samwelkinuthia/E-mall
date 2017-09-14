json.partial! "events/event", event: @event

json.extract! @event, :id, :name, :description, :starting_date, :ending_date, :starting_time, :ending_time, :mall_id, :eventimage, :created_at, :updated_at
