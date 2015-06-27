require 'sinatra'
require 'sinatra/partial'
require 'sinatra/base'


class SuperWealthManager < Sinatra::Base

  user1 = {:apple => 20, :IBM => 60}
  user1_balance = 1000
# set :partial_template_engine, :erb
set :public_folder, Proc.new { File.join(root, '..', 'public') }

  get '/' do
    erb :index
  end

  get '/user_profile/:id' do
    @investment = user1
    @balance = user1_balance
    erb :user_profile
  end

run! if app_file == $0

end