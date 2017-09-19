class Api::ApiController < ApplicationController	

	def list_all
		@spots = ParkingSpot.all

		render json: @spots	
	end

	def show_spot
		@spot = ParkingSpot.find(params[:id])

		render json: @spot
	end

	def create_spot
		@parking_spot = ParkingSpot.new(parking_spot_params)

	end

	private
	def parking_spot_params
	params.require(:parking_spots).permit(:spot_id, :spot_floor, :spot_description)
	end
end
