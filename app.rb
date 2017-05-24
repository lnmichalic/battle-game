require 'sinatra'
require 'capybara'
require 'capybara/rspec'
require 'rspec'

class Battle < Sinatra::Base

  Capybara.app = Battle

  get '/' do
    "Testing infrastructure working!"
  end

end
