require 'sinatra/base'
require 'grit'
require 'client_helpers'

class Client < Sinatra::Base

  include ClientHelpers

  set :public, File.dirname(__FILE__) + '/../public'
  set :views,  File.dirname(__FILE__) + '/../views'

  get '/' do
    erb :index
  end

  get '/commit/:id' do |id|
    repo = Grit::Repo.new(File.expand_path('../..', __FILE__))
    @commit = repo.commit(params[:id])
    erb :commit
  end

end
