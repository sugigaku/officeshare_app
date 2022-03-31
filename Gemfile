source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.3'

gem 'rails'
#gem 'mysql2'
gem 'puma', '~> 4.3.12'
gem 'sassc-rails'
gem 'uglifier', '>= 1.3.0'
gem 'duktape'
#g channelがうまくいかないためcoffee-rails コメントアウト→その後のLoadError対処のため復活
gem 'coffee-rails', '5.0.0'

gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem 'bootsnap', '>= 1.1.0', require: false
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
gem 'carrierwave'
gem 'mini_magick'
gem 'jquery-rails'
gem 'sprockets-rails', '3.2.1'
#エラー文の日本語化
gem 'rails-i18n'
gem 'devise'
gem 'omniauth-google-oauth2'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'pry-rails'
  gem 'pry-byebug'
  gem 'pry-doc'
  gem 'mysql2' 
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console', '>= 3.3.0'
end

group :test do
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  gem 'webdrivers'
end

group :production do
  gem 'pg'
end