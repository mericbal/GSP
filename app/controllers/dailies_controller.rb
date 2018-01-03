class DailiesController < ApplicationController
	
	include ApplicationHelper

	before_action :secure
	before_action :setup_location, only: [:new, :create, :destroy, :update, :edit]
	before_action :setup_daily, only: [:edit, :update, :destroy, :status]

	def new
		@daily = Daily.new
	end

	def create
		@daily = Daily.new(daily_params)
		@daily.location_id = @location.id
		@daily.user_id = current_user.id
		if @daily.save
			redirect_to location_path(@location), flash: { notice: 'Car has been added successfully !' }
		else
			@errors = @daily.errors.full_messages
			render :new
		end
	end

	def edit
	end

	def update
		if @daily.update(daily_params) 
		redirect_to location_path @location, flash: { notice: 'Car has been updated successfully .' } 
		else
		render :edit
		end
	end

	def destroy
		@daily.destroy
		redirect_to location_path	@location, notice: 'Car has been removed !'
	end

	def status
		@location = Location.find(params[:location_id])
		@daily.paid ? @daily.update(paid: false) : @daily.update(paid: true)
		redirect_to location_path(@location)
	end

	private

	def setup_location
		@location = Location.find(params[:location_id])	
	end

	def setup_daily
		@daily = Daily.find(params[:id])
	end

	def daily_params
		params.require(:daily).permit(:color, :make, :ticket_no, :price, :paid)
	end

end