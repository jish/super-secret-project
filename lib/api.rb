require 'sinatra/base'

class Api < Sinatra::Base

  get '/commits.json' do
    content_type 'application/json'
    '[{"author":"Somebody", "commitMessage":"I committed something"}]'
  end

end
