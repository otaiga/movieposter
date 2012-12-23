class MainController < ApplicationController
  include Movie::MovieFinder

  def index

  end

  def results
    conf = image_config_settings
    @results = movie_search(params[:search])
    @image = conf["base_url"] + conf["size"]
  end

end
