json.extract! room, :id, :name, :description, :room_number, :area, :wing, :floor, :opening_time, :closing_time, :phone, :email, :facebook, :instagram, :twitter, :occupied, :mall_id, :created_at, :updated_at
json.url room_url(room, format: :json)
