require 'sinatra/base'

class Client < Sinatra::Base

  get '/' do
    erb :index
  end

end
