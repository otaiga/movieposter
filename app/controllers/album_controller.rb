class AlbumController < ApplicationController
require 'will_paginate/array'
include Album::AlbumFinder #call module so can access its methods

  
  def album_results

   results = album_search(params[:search]) 
   @results = (results).paginate(:page => params[:page], :per_page => 1)

   

  end

end

