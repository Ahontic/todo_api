# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.3'

gem 'bcrypt'
gem 'bootsnap', require: false
gem 'bundler-audit'
gem 'devise'
gem 'dox'
gem 'dry-configurable', '0.9.0'
gem 'fast_jsonapi'
gem 'jwt'
gem 'lefthook'
gem 'pg'
gem 'puma', '~> 3.12'
gem 'rack-cors'
gem 'turbolinks', '~> 5'

group :development, :test do
  gem 'pry-rails'
end

group :development do
  gem 'brakeman'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  gem 'database_cleaner'
  gem 'factory_bot_rails'
  gem 'ffaker'
  gem 'json_matchers'
  gem 'rspec-rails', '~> 4.0.0.beta3'
  gem 'rspec_junit_formatter'
  gem 'rubocop'
  gem 'shoulda-matchers'
  gem 'simplecov'
  gem 'test-prof'
end

gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
