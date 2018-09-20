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
    # session[:player1_name] = params[:player1_name]
    redirect '/play'
  end

  get '/play' do
    @player1_name = $player_1.name
    @player2_name = $player_2.name
    # @player2_name = session[:player2_name]
    erb :players
  end

  get '/player_attacked' do
    $player_1.attack($player_2)
    @player1_name = $player_1.name
    @player2_name = $player_2.name
    @player1_hp = $player_1.hit_points
    @player2_hp = $player_2.hit_points
    erb :attack
  end
end
