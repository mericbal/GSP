class MainsController < ApplicationController

	def home
		!current_user ? redirect_to(new_user_session_path) : @locations = Location.all
	end

	def test
	end
	
end