class CreateMalls < ActiveRecord::Migration[5.1]
  def change
    create_table :malls do |t|
      t.string :name
      t.boolean :parking_space
      t.text :description
      t.text :email
      t.integer :phone_no
      t.integer :rooms
      t.time :opening_time
      t.time :closing_time
      t.boolean :rooms_status

      t.timestamps
    end
  end
end
