class LocationsController < ApplicationController
	
	include ApplicationHelper	

	before_action :secure
	$sort = nil
	
	def index
		@locations = Location.all
	end

	def show
		@location = Location.find(params[:id])
		
		if params[:sort] then $sort = params[:sort] end
		
		$sort ? @dailies = Daily.where(location_id: @location.id).order($sort).order(created_at: :desc) : @dailies = Daily.where(location_id: @location.id).order(created_at: :desc)
		@paid, @unpaid = @dailies.partition(&:paid)
		@total = @paid.map(&:price).reduce(:+)
	end

end










# <h2> <%= ((Time.now - (@location.dailies[0].created_at))/60) %> </h2>

# <h3> <%= DateTime.now %> </h3>

# <h3>  <%= Date.yesterday %> </h3>

# <h3> <%= (1.day.ago) - Time.now %></h3>


