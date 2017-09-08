class AddMallpictureToMalls < ActiveRecord::Migration[5.1]
  def change
    add_column :malls, :mallpicture, :string
  end
end
