require 'sinatra'
require 'sinatra/partial'

set :partial_template_engine, :erb
set :public_folder, Proc.new { File.join(root, '..', 'public') }

class SuperWealth

get '/' do
  erb :index
end

end