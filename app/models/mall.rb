class Mall < ApplicationRecord
  #Find address of mall and use it for fetching the Longitude and Latitude
  geocoded_by :address
  #After finding address find the mall's location
  after_validation :geocode, if: :address_changed?
end
