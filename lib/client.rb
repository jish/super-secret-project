require 'sinatra/base'

class Client < Sinatra::Base

  helpers do
    def jquery_tag(version = '1.4.2')
      if ENV['RACK_ENV'] == 'development'
        path = "/javascripts/vendor/jquery-#{version}.js"
      else
        path = 'http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js'
      end

      "<script type=\"text/javascript\" src=\"#{path}\"></script>"
    end
  end

  set :public, 'public'

  get '/' do
    erb :index
  end

end
