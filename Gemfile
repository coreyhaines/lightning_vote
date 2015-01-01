source 'https://rubygems.org'
ruby '2.2.0'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.0'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
# gem 'coffee-rails', '~> 4.1.0'
#

gem 'haml-rails', '0.6.0'
gem 'foundation-rails', '5.4.5.0'
gem 'rails_autolink', '1.1.6'

# Use jquery as the JavaScript library
gem 'jquery-rails', '4.0.2'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
# gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
# gem 'sdoc', '~> 0.4.0', group: :doc

# Use ActiveModel has_secure_password
gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
gem 'unicorn', '4.8.3'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development
#
gem 'omniauth'
gem 'omniauth-identity'

group :development, :test do
  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  gem 'therubyracer', '0.12.1', platforms: :ruby

  # Use sqlite3 as the database for Active Record
  gem 'sqlite3', '1.3.10'

  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  # gem 'byebug'

  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring', '1.2.0'
end

group :test do
  gem 'rspec-rails', '3.1.0'
  gem 'guard-rspec', '4.5.0'
end

group :production do
  gem 'rails_12factor', '0.0.3'
  gem 'pg', '0.17.1'
  gem 'newrelic_rpm'
end
