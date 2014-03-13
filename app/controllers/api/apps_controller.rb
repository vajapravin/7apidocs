class Api::AppsController < Api::ApiController
	def index
		@apps = App.all.to_a
	end

	def create
		app = App.new(params.require(:app).permit(:name, :desc, :language))
		render json: { success: true, app: app } if app.save
	end
end
