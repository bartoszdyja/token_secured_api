class SessionsController < ApplicationController
  def create
  	auth = request.env["omniauth.auth"]
  	/user = User.find_by_provider_and_uid(auth["provider"], auth["uid"])/
  	session[:user_id] = auth["uid"]
  	redirect_to root_path, notice: auth
  end

  def destroy
  	session[:user_id] = nil
  	redirect_to root_path, notice: 'logged out'
  end 
end
