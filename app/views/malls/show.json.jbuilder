json.partial! "malls/mall", mall: @mall
json.extract! @mall, :id, :name, :mallpicture, :address, :parking_space, :description, :email, :phone_no, :rooms, :opening_time, :closing_time, :rooms_status, :created_at, :updated_at
