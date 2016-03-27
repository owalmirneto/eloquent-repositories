# frozen_string_literal: true
source 'https://rubygems.org'
ruby '2.3.0'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.6'
# Use sqlite3 as the database for Active Record
gem 'pg', '~> 0.18.4'
# Use SCSS for stylesheets
gem 'less-rails', '~> 2.7.1'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

gem 'puma', '~> 3.2.0'

# Bower for rails
# https://github.com/rharriso/bower-rails
gem 'bower-rails', '~> 0.10.0'

# https://github.com/wfsneto/emmet_font_awesome
gem 'emmet_font_awesome', '0.0.1'

# https://github.com/wfsneto/emmet_font_awesome
gem 'enumerate_it', '~> 1.2.8'

# https://github.com/jnunemaker/httparty
gem 'httparty', '~> 0.13.7'

# https://github.com/collectiveidea/interactor
gem 'interactor', '~> 3.0'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  gem 'pry-rails', '~> 0.3.4'
  gem 'rubocop', '~> 0.38.0'
  gem 'guard-rubocop', '~> 1.2.0'
  gem 'rspec-rails', '~> 3.4.2'
  gem 'factory_girl_rails', '~> 4.6.0'
  # https://github.com/bkeepers/dotenv
  gem 'dotenv-rails', '~> 2.0', '>= 2.0.2'
end

group :test do
  gem 'webmock', '~> 1.24.2'
  gem 'shoulda-matchers', require: false
end

group :development do
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end

group :production do
  gem 'rails_12factor'
end
