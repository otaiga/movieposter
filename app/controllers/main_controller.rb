class MainController < ApplicationController
  include Movie::MovieFinder

  def index

  end

  def results
    @results = movie_search(params[:search])
    
  end

end
