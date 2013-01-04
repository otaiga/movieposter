server "www.karlturner.co.uk", :app, :web
server "www.karlturner.co.uk", :db, :primary => true

set :user, "kturner"
set :env, "kturner"
set :rails_env, "production"

ssh_options[:keys] = '~/.ssh/movieposter.pem'

namespace :puppet do
  task :bootstrap do
    system "config/provision/bootstrap/bootstrap_production.sh"
  end

  task :apply do
    # need to set --environment my_environment otherwise apache conf file will
    # default to production
    run "sudo puppet apply /etc/puppet/manifests/site.pp --environment #{rails_env}"
  end
end