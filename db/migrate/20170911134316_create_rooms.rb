class CreateRooms < ActiveRecord::Migration[5.1]
  def change
    create_table :rooms do |t|
      t.string :name
      t.text :description
      t.integer :room_number, default: 0
      t.float :area, default: 1000
      t.string :wing, default: "Left"
      t.integer :floor, default: 1
      t.time :opening_time
      t.time :closing_time
      t.bigint :phone
      t.string :email
      t.string :facebook
      t.string :instagram
      t.string :twitter
      t.integer :rent, default: 50000
      t.boolean :occupied, default: false
      t.belongs_to :mall, foreign_key: true

      t.timestamps
    end
  end
end
