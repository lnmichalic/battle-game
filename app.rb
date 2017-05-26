require 'sinatra'
require 'capybara'
require 'capybara/rspec'
require 'rspec'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base
  enable :sessions

  Capybara.app = Battle

  get '/' do
    erb(:index)
  end

  post '/names' do
    @player1 = Player.new(params[:player1])
    @player2 = Player.new(params[:player2])
    $game = Game.new(@player1, @player2)
    redirect '/play'
  end

  get '/play' do
    @game = $game
    erb :play
  end

  get '/attack' do
    @game = $game
    @game.attack(@game.defending_player)
    erb :attack
  end

  post '/switch-turns' do
    $game.switch_turns
    redirect '/play'
  end
end
