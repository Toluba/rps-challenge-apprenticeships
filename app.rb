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
    redirect '/play'
  end

  get "/play" do
    @player1 = session[:player1]
    erb :play
  end
  # come back to this and wrote a proper note, gennuinely forgot what this is
  post "/option" do 
    session[:option] = params[:option]
    redirect '/results'
  end 

  get '/results' do 
    @player1 = session[:player1]
    erb :results
  end



  run! if app_file == $0
end
