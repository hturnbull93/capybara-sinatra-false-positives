require 'sinatra/base'

class Echo < Sinatra::Base

  # Uncomment to use plain 500 errors
  # set :show_exceptions, false

  get '/' do
    erb :index
  end

  post '/echo' do
    param['echo'] # A deliberate mistake for demonstration purposes
  end
end
