require 'sinatra/base'
require 'client_helpers'

class Client < Sinatra::Base

  include ClientHelpers

  set :views, File.dirname(__FILE__) + '/../public'
  set :views, File.dirname(__FILE__) + '/../views'

  get '/' do
    erb :index
  end

end
