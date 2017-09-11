class CreateParkingSpots < ActiveRecord::Migration[5.1]
  def change
    create_table :parking_spots do |t|
      t.string :spot_id
      t.string :spot_floor
      t.string :spot_description
      t.string :text

      t.timestamps
    end
  end
end
