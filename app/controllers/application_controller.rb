class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def authentication_required
  	if !logged_in?
  		redirect_to login_path
  	end
  end

  def logged_in?
  	!!current_user
  end

  def current_user
	@current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  # Method you build in controllers do not permeate to your ActionView part of your code
  # you can't call this in your html.erb unless you say explicitly.
  # THIS IS A HELPER METHOD, PLEASE LET ME USE IT IN MY VIEW!!!
  helper_method :current_user
end
