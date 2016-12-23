
source 'https://rubygems.org'
ruby '2.3.1'

# Server
gem 'rails', '~> 5.0.0', '>= 5.0.0.1'
gem 'pg'
gem 'puma', '~> 3.0'
gem 'simple_form'
gem 'country_select'
gem 'devise'
gem 'redcarpet'
gem 'rack-cors', :require => 'rack/cors'
gem 'rack-canonical-host'
gem 'canonical-rails', github: 'jumph4x/canonical-rails'
gem 'activerecord-jdbcpostgresql-adapter', :platform => :jruby
gem 'hstore_translate'
gem 'rails-i18n'
gem 'http_accept_language'

# Uploading
gem 'refile', github: 'refile/refile', require: 'refile/rails'
gem 'refile-mini_magick', github: 'refile/refile-mini_magick'
gem 'sinatra', github: 'sinatra/sinatra', branch: 'master'
gem 'refile-s3'

# Assets
gem 'sass-rails', '~> 5.0'
gem 'bourbon', git: 'https://github.com/thoughtbot/bourbon'
gem 'neat'
gem 'haml'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'jquery-rails'
gem 'turbolinks', '~> 5.0'
gem 'jbuilder', '~> 2.5'
gem 'autoprefixer-rails'
gem 'font-awesome-rails'

# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platform: :mri
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console'
  gem 'listen', '~> 3.0.5'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'figaro'
  gem 'erb2haml'
  gem 'annotate'
  gem 'rails_real_favicon'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
