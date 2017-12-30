module ApplicationHelper

	def secure
		if !current_user then redirect_to :root end
	end

end
