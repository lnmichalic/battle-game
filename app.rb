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
    @name = params[:name]
    erb(:play)
  end

end
