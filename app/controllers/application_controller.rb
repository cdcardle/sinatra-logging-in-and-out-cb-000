require_relative '../../config/environment'
class ApplicationController < Sinatra::Base
  configure do
    set :views, Proc.new { File.join(root, "../views/") }
    enable :sessions unless test?
    set :session_secret, "secret"
  end

  get '/' do
    erb :index
  end

  post '/login' do
    if @user = User.find_by(name: params[:username])
      session[:id] = @user.id
      redirect to '/account'
    else
      erb :error
    end
  end

  get '/account' do

  end

  get '/logout' do
    redirect to '/'
  end


end
