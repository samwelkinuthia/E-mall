json.partial! "rooms/room", room: @room

json.extract! @room, :id, :name, :description, :room_number, :area, :wing, :floor, :opening_time, :closing_time, :phone, :email, :facebook, :instagram, :twitter, :website, :occupied, :mall_id, :category_id, :storeimage, :storeavatar, :created_at, :updated_at
