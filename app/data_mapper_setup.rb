env = ENV["RACK_ENV"] || 'development'

require './lib/user'

DataMapper.setup(:default, "postgres://localhost/wealth_#{env}")
DataMapper.finalize
