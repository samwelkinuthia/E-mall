class Room < ApplicationRecord
  mount_uploader :storeavatar, StoreavatarUploader
  mount_uploader :storeimage, StoreimageUploader
  belongs_to :mall
  belongs_to :category
  has_many :products, dependent: :destroy

  def self.create_rooms
    @mall = Mall.find_by(id: params[:id])
    rooms_create = @mall.total_rooms
    rooms_create.times do
      @room = @mall.rooms.new(room_params)
      @room.save
    end
  end
  # def self.add_rooms
  #   @mall = Mall.last
  #   rooms = 0
  #   until rooms >= @mall.spaces
  #     rooms += 1
  #     @room = @mall.rooms.new(
  #       name: nil,
  #       description: nil,
  #       room_number: nil,
  #       area: nil,
  #       wing: nil,
  #       floor: nil,
  #       opening_time: nil,
  #       closing_time: nil,
  #       phone: nil,
  #       email: nil,
  #       facebook: nil,
  #       instagram: nil,
  #       twitter: nil,
  #       occupied: false,
  #       mall_id: @mall.id,
  #       category_id: nil,
  #       storeimage: nil,
  #       storeavatar: nil,
  #       website: nil
  #     )
  #     @room.save
  #   end
  # end
end
