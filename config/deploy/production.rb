server "www.karlturner.co.uk", :app, :web
server "www.karlturner.co.uk", :db, :primary => true

set :user, "movie"
set :env, "movie"
set :rails_env, "production"

ssh_options[:keys] = '~/.ssh/movieposter.pem'