require 'sinatra/base'

class Battle < Sinatra::Base

  enable :sessions
  set :session_secret, 'something secret'

  get '/' do
    erb :player_input
  end

  post '/names' do
    session[:player1_name] = params[:player1_name]
    session[:player2_name] = params[:player2_name]
    redirect '/play'
  end

  get '/play' do
    @player1_name = session[:player1_name]
    @player2_name = session[:player2_name]
    erb :players
  end

  get '/player_attacked' do
    @player1_name = session[:player1_name]
    @player2_name = session[:player2_name]
    erb :attack
  end
end
