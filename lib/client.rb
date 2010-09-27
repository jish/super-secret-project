require 'sinatra/base'
require 'client_helpers'

class Client < Sinatra::Base

  include ClientHelpers

  set :public, 'public'

  get '/' do
    erb :index
  end

end
