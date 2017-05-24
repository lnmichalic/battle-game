require 'sinatra'
require 'capybara'
require 'capybara/rspec'
require 'rspec'

class Battle < Sinatra::Base

  Capybara.app = Battle


  get '/' do
    erb(:index)
  end

  post '/names' do
    @player1 = params[:player1]
    @player2 = params[:player2]
    erb(:play)
  end

end
