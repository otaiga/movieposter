source 'https://rubygems.org'

gem 'rails', '3.2.11'
gem 'mysql2'

group :production do
  gem 'pg'
  gem 'thin'
end

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'therubyracer', :platform => :ruby
  gem 'uglifier', '>= 1.0.3'
  gem 'twitter-bootstrap-rails', :git => 'git://github.com/seyhunak/twitter-bootstrap-rails.git'
  gem 'less-rails'
end

gem 'jquery-rails'

group :development, :test do
  gem 'rspec-rails'
  gem 'brakeman'
  gem 'heroku'
end


# Adding in httparty for requests to api
  gem 'httparty'

# Adding in pagination
  gem 'will_paginate', '~> 3.0'
  gem 'will_paginate-bootstrap'

# Adding capistrano for deployment
  gem 'capistrano'
