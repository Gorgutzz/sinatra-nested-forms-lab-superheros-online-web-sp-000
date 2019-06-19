require 'sinatra/base'

class App < Sinatra::Base

  get '/' do
      erb :index
  end

  post '/teams' do
      # binding.pry
      @team = Team.new(params[:team])
      #binding.pry
      params[:team][:members].each do |details|
          SuperHero.new(details)
      end
      @members = SuperHero.all

      erb :team

  end 
