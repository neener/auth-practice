class SessionsController < ApplicationController

	def new
	end

	def create
		user = User.find_by(:email => params[:email])
		# how the hell do you log somone in?
		# HTTP IS A STATELESS PROTOCOL
		# Every request in independent
		# you can't remember data inbetween requests
		if user && user.authenticate(params[:password])
			session[:user_id] = user.id

			redirect_to root_path
		else
			render 'sessions/new'
		end
	end

	def destroy
		reset_session
		redirect_to login_path
	end
end
