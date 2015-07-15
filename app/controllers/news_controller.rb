class NewsController < ApplicationController
  respond_to :json	
  def index
  	token = request.headers['Authorization'].to_s.split(' ').last
  	respond_with token
  end
end
