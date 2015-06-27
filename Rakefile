require 'data_mapper'
require './app/data_mapper_setup'

env = ENV["Rack_ENV"] || 'development'

DataMapper.setup(:default, "postgres://localhost/wealth_#{env}")
DataMapper.finalize

task :auto_upgrade do


  DataMapper.auto_upgrade!
  puts "Auto-upgrade complete"
end

task :auto_migrate do

  DataMapper.auto_migrate!
  puts "Auto-migrate complete (data could have been lost)"
end