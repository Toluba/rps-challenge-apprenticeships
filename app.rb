require "sinatra/base"
require "sinatra/reloader"
require "./lib/player"
require './lib/computer'
require "./lib/game.rb"

class RockPaperScissors < Sinatra::Base
  enable :sessions
  configure :development do
    register Sinatra::Reloader
  end

  before do
    @game = Game.instance
  end

  get "/test" do
    "test page"
  end

  get "/" do
    erb :index
  end

  post "/username" do
    player = Player.new(params[:player])
    computer = Computer.new
    @game = Game.create(player, computer)
    redirect "/play"
  end

  get "/play" do
    @player = session[:player]
    erb :play
  end
  # come back to this and wrote a proper note, gennuinely forgot what this is
  post "/option" do
    session[:option] = params[:option]
    redirect "/results"
  end

  get "/results" do
    @player_choice = @game.player.move(session[:choice])
    @computer_choice = @game.computer.choice
    erb :results
  end

  run! if app_file == $0
end
