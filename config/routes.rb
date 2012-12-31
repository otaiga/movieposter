Movieposter::Application.routes.draw do

  root :to => 'main#index'
  get "/main/results" => "main#results"
  get "/album/album_results" => "album#album_results"
end
