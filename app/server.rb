require 'sinatra'
require 'rack-flash'
require 'data_mapper'
require 'sinatra/partial'
require 'sinatra/base'

require_relative 'data_mapper_setup'

DataMapper.auto_upgrade!


class SuperWealthManager < Sinatra::Base

  user1 = {:apple => 20, :IBM => 60}
  user1_balance = 1000

set :partial_template_engine, :erb
set :public_folder, Proc.new { File.join(root, '..', 'public') }

enc = ENV["RACK_ENV"] || 'development'

enable :sessions
set :sessions_secret, 'super secret'
use Rack::Flash
use Rack::MethodOverride

get '/' do
  erb :index
end

get '/users/new' do
  @title = "Create a New User"
  @user = User.new
  erb :signup
end

post '/users' do
  @user = User.create(:username => params[:username],
                   :email => params[:email],
                   :password => params[:password])
  if
    @user.save
    session[:user_id] = @user.id
    flash[:notice] = "Welcome to Super Wealth, #{@user.username}"
    # redirect ('/user_profile/:id')
    redirect('/user_profile/:id')
  else
    flash.now[:errors] = @user.errors.full_messages
    erb :signup
  end
end

 get '/sessions/new' do
    @title = "Sign in"
    erb :user_profile
  end

post '/sessions' do
  username, password = params[:username], params[:password]
    @user = User.authenticate(username, password)
    puts @user
    if @user
     session[:user_id] = @user.id
     flash[:notice] = "Welcome back, #{@user.username}"
     # redirect ('/user_profile/:id')
     redirect('/user_profile/:id')
    else
      flash[:errors] = ["Sorry, wrong username or password"]
      redirect ('/sessions/new')
    end
  erb :users
end

  get '/sessions/logout' do
    if session[:user_id]
      session[:user_id] = nil
      flash[:notice] = "You are now logged out"
      redirect to('/')
    else 
      flash[:notice] = "You are not logged in"
      redirect to ('/')
    end
  end

get '/user_profile/:id' do
  @investment = user1
  @balance = user1_balance
  erb :user_profile
end

 # run! if app_file == $0

end