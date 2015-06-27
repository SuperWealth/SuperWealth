# Generated by cucumber-sinatra. (2015-01-13 12:30:38 +0000)

ENV['RACK_ENV'] = 'test'

require File.join(File.dirname(__FILE__), '..', '..', 'app/server.rb')

require 'capybara'
require 'capybara/cucumber'
require 'rspec'

DataMapper.auto_migrate!

Capybara.app = SuperWealthManager

class SuperWealthManagerWorld
  include Capybara::DSL
  include RSpec::Expectations
  include RSpec::Matchers
end

World do
  SuperWealthManagerWorld.new
end