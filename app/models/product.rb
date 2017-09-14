class Product < ApplicationRecord
  belongs_to :room

  def self.import(room, file)
    CSV.foreach(file.path, headers: true) do |row|
      room.products.create! row.to_hash
    end
  end
end
