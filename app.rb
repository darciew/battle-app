require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base

  enable :sessions
  set :session_secret, 'something secret'

  get '/' do
    erb :player_input
  end

  post '/names' do
    player_1 = Player.new(params[:player1_name])
    player_2 = Player.new(params[:player2_name])
    session[:game] = Game.new(player_1,player_2)
    redirect '/play'
  end

  get '/play' do
    @game = session[:game]
    erb :players
  end

  post '/play' do
    @game = session[:game]
    @game.attack(@game.player1)
    redirect '/game_over' if @game.is_over?
    @game.turn_switcher
    redirect '/play'
  end

  get '/player_attacked' do
    @game = session[:game]
    @game.attack(@game.player2)
    redirect '/game_over' if @game.is_over?
    @game.turn_switcher
    @game = @game
    erb :attack
  end

  get '/game_over' do
    @game = session[:game]
    @game.game_winner
    erb :game_over
  end
end
