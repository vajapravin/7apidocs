class Api::ApiController < ActionController::Base
	respond_to :json
	
	# Rescue for controller
	rescue_from Exception do |e|
		render json: { success: false, message: e.message }
  	end
end
