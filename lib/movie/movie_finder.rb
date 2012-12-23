module Movie::MovieFinder

URL = "http://api.themoviedb.org/3/search/movie?api_key="
API_KEY = APP_CONFIG['api_key']

  def movie_search(query)
    response = HTTParty.get(URL + API_KEY + "&query=#{query}", :headers => { 'Content-Type' => 'application/json', 'Accept' => 'application/json' })
    results = JSON.parse(response.body)["results"]
    clean_up(results)
  end

private

  def clean_up(results)
    results.map do |r|
      {
        "title" => r["title"], 
        "image" => r["poster_path"],
        "release_date" => r["release_date"]
      }
    end
  end

end