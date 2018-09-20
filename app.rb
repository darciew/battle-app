require 'sinatra/base'
require './lib/player'

class Battle < Sinatra::Base

  enable :sessions
  set :session_secret, 'something secret'

  get '/' do
    erb :player_input
  end

  post '/names' do
    $player_1 = Player.new(params[:player1_name])
    $player_2 = Player.new(params[:player2_name])
    $game = Game.new($player_1,$player_2)
    # session[:player1_name] = params[:player1_name]
    redirect '/play'
  end

  get '/play' do
    @player1_name = $game.player1.name
    @player2_name = $game.player2.name
    # @player2_name = session[:player2_name]
    erb :players
  end

  get '/player_attacked' do
    $game.attack($game.player2)
    @player1_name = $game.player1.name
    @player2_name = $game.player2.name
    @player1_hp = $game.player1.hit_points
    @player2_hp = $game.player2.hit_points
    erb :attack
  end
end
