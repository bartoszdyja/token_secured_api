class NewsController < ApplicationController
  respond_to :json	
  def index
  	token = request.headers['Authorization'].to_s.split(' ').last
  	user = User.find_by(oauth_token: token)
  	if user
  		respond_with user.name
  	else
  		respond_with('Unauthorized', status: 	401)
  	end
  end
end
