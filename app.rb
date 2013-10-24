require 'sinatra/base'
require_relative 'app/team.rb'
require_relative 'app/hero.rb'

module SuperSinatra
  class App < Sinatra::Base

    get '/' do

    erb :'/super_hero'
    end

    post '/team' do 
      team = Team.new
      team.name = params[:team][:name]
      team.motto = params[:team][:motto]

      params[:team][:hero].each do |k, v|
        hero = Hero.new
        hero.name = params[:team][:hero][k][:name]
        hero.power = params[:team][:hero][k][:power]
        hero.bio = params[:team][:hero][k][:bio]
        team.hero << hero  
      end
    redirect '/team'
    end

    get '/team' do 
      @team = Team.all
    erb :'/team'
    end
  end
end