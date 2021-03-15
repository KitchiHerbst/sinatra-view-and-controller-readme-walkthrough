require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base
  get '/reverse' do
    erb :reverse
  end

  post '/reverse' do
    #binding.pry
    @name = params[:string]
    @name = @name.reverse
    erb :reversed

  end

  get '/friends' do
    @friends = ['Emily Wilding Davison', 'Harriet Tubman', 'Joan of Arc', 'Malala Yousafzai', 'Sojourner Truth']
    #binding.pry
    # Write your code here!
    erb :friends
  end

end