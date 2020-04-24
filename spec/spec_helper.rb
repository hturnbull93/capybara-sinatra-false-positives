# require echo.rb
require File.join(File.dirname(__FILE__), '..', 'echo.rb')

# testing gems
require 'capybara'
require 'capybara/rspec'
require 'rspec'

# configure capybara app
Capybara.app = Echo
