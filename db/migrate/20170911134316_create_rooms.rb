class CreateRooms < ActiveRecord::Migration[5.1]
  def change
    create_table :rooms do |t|
      t.string :name
      t.text :description
      t.integer :room_number
      t.float :area
      t.string :wing
      t.integer :floor
      t.time :opening_time
      t.time :closing_time
      t.bigint :phone
      t.string :email
      t.string :facebook
      t.string :instagram
      t.string :twitter
      t.boolean :occupied, default: false
      t.belongs_to :mall, foreign_key: true

      t.timestamps
    end
  end
end
