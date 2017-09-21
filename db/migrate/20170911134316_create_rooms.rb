class CreateRooms < ActiveRecord::Migration[5.1]
  def change
    create_table :rooms do |t|
      t.string :name, default: "room name"
      t.text :description, default: "room description"
      t.integer :room_number, default: 0
      t.float :area, default: 300
      t.string :wing, default: "Wing"
      t.integer :floor, default: 1
      t.time :opening_time, default: Time.now
      t.time :closing_time, default: Time.now
      t.bigint :phone, default: 0
      t.string :email, default: "room@gmail.com"
      t.string :facebook, default: "facebook.com"
      t.string :instagram, default: "room.instagram.com"
      t.string :twitter, default: "room.twitter.com"
      t.integer :rent, default: 0
      t.boolean :occupied, default: false
      t.belongs_to :mall, foreign_key: true

      t.timestamps
    end
  end
end
