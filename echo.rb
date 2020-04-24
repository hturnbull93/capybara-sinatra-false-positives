require 'sinatra/base'

class Echo < Sinatra::Base

  set :show_exceptions, false
  get '/' do
    erb :index
  end

  post '/echo' do
    param['echo'] # A deliberate mistake for demonstration purposes
  end
end
