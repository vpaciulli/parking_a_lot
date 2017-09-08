class ParkingSpot < ApplicationRecord
  validates :spot_id, presence: true  
  validates :spot_floor, presence: true
  validates :spot_description, presence: true
end
