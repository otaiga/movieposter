require 'open-uri'
module Album::AlbumFinder

#Module used so that can use in controller-too large here to really put into a controller

#Constants to use in methods
ALBUM_URL = "https://itunes.apple.com/search?term="
#API_KEY = APP_CONFIG['api_key'] #acceses api_key in config/config.yml



def album_search(query)
  query = URI::encode(query) # this enables spaces to be specified in search query, so the killers becomes the%20killers%20
  response = HTTParty.get(ALBUM_URL + "#{query}" + "&entity=album", :headers => { 'Content-Type' => 'application/json', 'Accept' => 'application/json' })
  results = JSON.parse(response.body)["results"] #results is the JSON object being returned
  
end












end