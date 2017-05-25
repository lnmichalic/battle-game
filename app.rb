require 'sinatra'
require 'capybara'
require 'capybara/rspec'
require 'rspec'
require './lib/player'

class Battle < Sinatra::Base

  enable :sessions

  Capybara.app = Battle

  get '/' do
    erb(:index)
  end

  post '/names' do
    @player1 = Player.new(params[:player1])
    @player2= Player.new(params[:player2])
    $game = Game.new(@player1, @player2)
    redirect '/play'
  end

  get '/play' do
    @game = $game
    erb :play
  end

  get '/attack' do
    @game = $game
    @game.attack(@game.player2)
    erb :attack
  end
end
