class ParkingSpotsController < ApplicationController
  def index
    @parking_spots = ParkingSpot.all
  end

  def new
    @parking_spot = ParkingSpot.new
  end

  def show
    @parking_spot = ParkingSpot.find(params[:id])
  end

  def create
    @parking_spot = ParkingSpot.new(parking_spot_params)

    if @parking_spot.save
        redirect_to @parking_spot
    else
        render 'new'
    end
  end

  private
  def parking_spot_params
    params.require(:parking_spots).permit(:spot_id, :spot_floor, :spot_description)
  end
end
