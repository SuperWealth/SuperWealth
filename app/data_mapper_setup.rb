env = ENV["RACK_ENV"] || 'development'

require './lib/user'
require './lib/asset'
require './lib/investment'

DataMapper.setup(:default, "postgres://localhost/wealth_#{env}")
DataMapper.finalize
