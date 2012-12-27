class MainController < ApplicationController
  require 'will_paginate/array'
  include Movie::MovieFinder

  def index

  end

  def results
    if !params[:search].empty?
      conf = image_config_settings
      results = movie_search(params[:search])
      @results = removed_nil_images(results).paginate(:page => params[:page], :per_page => 1)
      @image = conf["base_url"] + conf["size"]
    else
      redirect_to root_path
    end
  end

private

# delete a nil image record:
  def removed_nil_images(results)
    results.delete_if {|x| x["image"] == nil}
  end

end
