class MonthliesController < ApplicationController

	include ApplicationHelper

	before_action :setup_location, only: [:new, :create, :destroy, :update, :edit]


	def new
		@monthly = Monthly.new
	end

	def create
		@monthly = Monthly.new(monthly_params)
		@monthly.location_id = @location.id
		@monthly.user_id = current_user.id
		if @monthly.save
			redirect_to location_path(@location), flash: { notice: 'Monthly client has been added successfully .' }
		else
			@errors = @monthly.errors.full_messages
			render :new
		end
	end

	def edit
	end

	def update
		@monthly.update(monthly_params) ? redirect_to location_path @location : render :edit
	end

	def destroy
		@monthly.destroy
		redirect_to location_path @location
	end

	private

	def setup_location
		@location = Location.find(params[:location_id])	
	end	

	def monthly_params
		params.require(:monthly).permit(:first, :last, :phone, :make, :color, :ticket_no, :price, :paid )
	end

end