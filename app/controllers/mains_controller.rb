class MainsController < ApplicationController

	def home
		@locations = Location.all
		# redirect_to new_user_session_path
	end

	def test
	end
	
end