class AddAddressLongitudeLaitudeToMalls < ActiveRecord::Migration[5.1]
  def change
    add_column :malls, :address, :string
    add_column :malls, :longitude, :float
    add_column :malls, :latitude, :float
  end
end
