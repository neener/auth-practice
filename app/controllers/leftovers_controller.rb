class LeftoversController < ApplicationController
	before_action :authentication_required

	def index
		# if you're not logged in, you can't see this, in fact, go back to the login.
		@leftover = Leftover.new
		@leftovers = Leftover.all
	end

	def show
		@leftover = Leftover.find(params[:id])
	end

	def create
		@leftover = Leftover.new(leftover_params)
		@leftover.name = params[:leftover][:name]
		@leftover.save

		redirect_to leftover_url(@leftover)
	end

	private

		def leftover_params
			params.require(:leftover).permit(:name)
		end
end
