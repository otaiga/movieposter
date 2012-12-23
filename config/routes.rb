Movieposter::Application.routes.draw do

  root :to => 'main#index'
  get "/main/results" => "main#results"

end
