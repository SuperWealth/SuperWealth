require 'sinatra'
require 'sinatra/partial'
require 'sinatra/base'


class SuperWealthManager < Sinatra::Base

# set :partial_template_engine, :erb
set :public_folder, Proc.new { File.join(root, '..', 'public') }

get '/' do
  erb :index
end

run! if app_file == $0

end