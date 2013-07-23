source 'https://rubygems.org'

group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'
gem 'devise'

group :development, :test do
  gem 'debugger'
end

# gem 'newrelic_rpm'

# gem 'taps'

gem 'yaml_db'
gem 'therubyracer'
gem 'mysql2'

# Bundle edge Rails instead:
# gem 'rails', :git => 'gits://github.com/rails/rails.git'

gem "twitter-bootstrap-rails", "~> 2.2.7"
gem 'bootstrap-sass', '~> 2.3.2.0'
gem "json"
# gem 'gmaps4rails'

gem 'geocoder'
gem 'haml'

# gem "rails-ajax", "~> 0.1.2.20130211"

# Gems used only for assets and not required
# in production environments by default.



# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'debugger'


gem 'pg', :group => :production

group :development, :test do

  gem 'dotenv-rails'
  gem 'sqlite3'             # Heroku doesn't run sqlite3, but Postgres. However, we can use Postgres locally


  gem 'pry-rails'           # Causes rails console to open pry
                            # https://github.com/rweng/pry-rails
  gem 'pry-debugger'        # Adds step, next, finish, and continue commands and breakpoints
                            # https://github.com/nixme/pry-debugger
  gem 'pry-stack_explorer'  # Navigate the call-stack
                            # https://github.com/pry/pry-stack_explorer
  gem 'annotate'            # Annotate all your models, tests, fixtures, and factories
                            # https://github.com/ctran/annotate_models
  gem 'quiet_assets'        # Turns off the Rails asset pipeline log
                            # https://github.com/evrone/quiet_assets
  gem 'better_errors'       # Replaces the standard Rails error page with a much better and more useful error page
                            # https://github.com/charliesome/better_errors
  gem 'binding_of_caller'   # Advanced features for better_errors advanced features (REPL, local/instance variable inspection, pretty stack frame names)
                            # https://github.com/banister/binding_of_caller
  gem 'meta_request'        # Supporting gem for Rails Panel (Google Chrome extension for Rails development).
                            # https://github.com/dejan/rails_panel/tree/master/meta_request
end