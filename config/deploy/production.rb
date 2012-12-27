server "ec2-54-247-32-142.eu-west-1.compute.amazonaws.com", :app, :web
server "ec2-54-247-32-142.eu-west-1.compute.amazonaws.com", :db, :primary => true

set :user, "movie"
set :env, "movie"
set :rails_env, "production"

ssh_options[:keys] = '~/.ssh/movieposter.pem'