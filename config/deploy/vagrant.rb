server "33.33.0.3", :app, :web
server "33.33.0.3", :db, :primary => true

set :user, "movie"
set :env, "movie"
set :rails_env, "production"

ssh_options[:keys] = '~/.ssh/movieposter.pem'