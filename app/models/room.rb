class Room < ApplicationRecord
  mount_uploader :storeavatar, StoreavatarUploader
  mount_uploader :storeimage, StoreimageUploader
  belongs_to :mall
  belongs_to :category
  has_many :products, dependent: :destroy

  def self.create_rooms(id)
    @mall = Mall.find_by(id: id)
    rooms_create = @mall.total_rooms
    rooms_create.times do
      @room = @mall.rooms.new(category_id:1)
      @room.save
    end
  end
end
