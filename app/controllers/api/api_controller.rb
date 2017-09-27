class Api::ApiController < ApplicationController

skip_before_action :verify_authenticity_token
skip_before_action :authenticate_user!

	def change_status
		@spot = ParkingSpot.find(params[:id])

		@spot.status = params[:status]

		@spot.save

		render json: @spot
	end

end
