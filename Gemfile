source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.0'
gem 'sqlite3'
gem 'mysql2'

# Couchbase model / support
gem 'couchbase'
gem 'couchbase-model'

gem 'devise'

# Use grape for api generation
gem 'grape'
gem "hashie_rails"
# Api doc
gem 'grape-swagger'

gem 'haml-rails'
gem 'simple_form'
gem 'upmin-admin'

# Use SASS syntax for stylesheets
gem 'sass-rails', '~> 5.0'
gem 'bourbon', '~> 4.2.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# high-performance JSON parser/generator
gem 'yajl-ruby'

# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc
# Use underscore as Collection library
gem 'underscore-rails', '~> 1.7.0'
# Use Angular.js as front-end framework
gem 'angularjs-rails', '~> 1.3.10'

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'

  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'

  gem 'rspec-rails', '~> 3.0'
  gem 'faker'
  gem 'spring-commands-rspec'
  gem 'binding_of_caller', :platforms=>[:mri_21]
  gem 'guard-bundler'
  gem 'guard-rails'
  gem 'html2haml'
  gem 'rails_layout'
  gem 'rb-fchange', :require=>false
  gem 'rb-fsevent', :require=>false
  gem 'rb-inotify', :require=>false

  #http://jacubeit.com/2013/08/31/rails-4-bdd-setup/
  gem 'better_errors'
  #https://github.com/Springest/terminal-notifier-guard
  gem 'terminal-notifier'
  gem 'terminal-notifier-guard', '~> 1.6.1'

  gem 'cucumber-rails', :require => false

  gem 'factory_girl_rails'
  gem 'guard-rspec'
  gem 'guard-cucumber'
  gem 'awesome_print'
  gem 'jazz_hands'
  gem 'quiet_assets'

end

group :test do
  gem 'capybara'
  gem 'launchy', '>= 2.1.2'
  gem 'database_cleaner'
  gem 'shoulda-matchers'
  gem 'airborne'
  gem 'selenium-webdriver'
end
