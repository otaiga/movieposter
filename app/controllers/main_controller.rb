class MainController < ApplicationController
  include Movie::MovieFinder

  def index

  end

  def results
    conf = image_config_settings
    results = movie_search(params[:search])
    @title = results.first["title"]
    @image = conf["base_url"] + conf["size"] + results.first["image"]
  end

end
