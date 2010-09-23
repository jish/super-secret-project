require 'sinatra/base'

class Client < Sinatra::Base

  get '/' do
    'Super secret project'
  end

end
