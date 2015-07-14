class NewsController < ApplicationController
  respond_to :json	
  def index
  	respond_with(@news = News.all)
  end
end
