class SessionsController < ApplicationController
  def create
  	# auth = request.env["omniauth.auth"]
  	user = User.from_omniauth(env["omniauth.auth"])
  	session[:user_id] = user.id
  	redirect_to root_path, notice: user.name
  end

  def destroy
  	session[:user_id] = nil
  	redirect_to root_path, notice: 'logged out'
  end 
end
