require 'sinatra/base'
require 'sinatra/reloader' 

class RockPaperScissors < Sinatra::Base
  enable :sessions
  configure :development do
  register Sinatra::Reloader
  end

  get '/test' do
    'test page'
  end

  get '/' do
    erb :index
  end

  post "/username" do
    session[:player1] = params[:player1]
    session[:player2] = params[:player2]
    redirect '/play'
  end

  get "/play" do
    @player1 = session[:player1]
    @player2 = session[:player2]
    erb :play
  end

  run! if app_file == $0
end
