class AddSpotStatusAndToSpot < ActiveRecord::Migration[5.1]
  def change
    add_column :parking_spots, :status, :boolean
  end
end
