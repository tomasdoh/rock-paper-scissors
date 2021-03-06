ENV['RACK_ENV'] = 'test'

require 'capybara'
require 'rspec'
require 'capybara/rspec'
require 'simplecov'
require 'simplecov-console'
require 'simplecov-shield'
require 'features/web_helpers.rb'
require File.join(File.dirname(__FILE__), '..', 'app.rb')

Capybara.app = RPS

SimpleCov.formatter = SimpleCov::Formatter::ShieldFormatter

RSpec.configure do |config|
  config.after(:suite) do
    puts
    puts "\e[33mHave you considered running rubocop? It will help you improve your code!\e[0m"
    puts "\e[33mTry it now! Just run: rubocop\e[0m"
  end
end
