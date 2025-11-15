source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.4.7'

gem 'carrierwave'
gem 'cocoon'
gem 'devise'
gem 'haml-rails'
gem 'jbuilder'
gem 'migration_data'
gem 'mini_magick'
gem 'pg'
gem 'puma'
gem 'rails', '~> 8.0'
gem 'simple_form'
gem 'turbolinks'
gem 'uglifier'
gem 'webpacker', '~> 5.0'
gem 'will_paginate'

gem 'sprockets-rails' # no longer automatically included in newer rails versions
gem 'psych', '< 4.0' # 4.0 introduces some breaking change for ruby 3.1

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'factory_bot_rails'
  gem 'faker'
end

group :development do
  gem 'web-console'
  gem 'listen'
  gem 'spring'
  gem 'spring-watcher-listen'
end

group :test do
  gem 'capybara'
  gem 'webdrivers', '~> 5.0'
  gem 'guard'
  gem 'guard-rspec'
  gem 'rails-controller-testing'
  gem 'rspec-rails'
  gem 'selenium-webdriver'
  gem 'win32console', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
end

group :production do
  gem 'fog-aws'
  gem 'rack-cors'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
