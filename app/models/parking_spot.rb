class ParkingSpot < ApplicationRecord
  validates_presence_of(:spot_id, :spot_floor, :spot_description)
end
