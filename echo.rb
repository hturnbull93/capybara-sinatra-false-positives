require 'sinatra/base'

class Echo < Sinatra::Base

  get '/' do
    erb :index
  end

end
