class AddStoreavatarToRooms < ActiveRecord::Migration[5.1]
  def change
    add_column :rooms, :storeavatar, :string
  end
end
