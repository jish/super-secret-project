require 'sinatra/base'
require 'grit'
require 'yajl'

class Api < Sinatra::Base

  get '/commits.json' do
    content_type :json
    repo = Grit::Repo.new(File.expand_path('../..', __FILE__))
    commits = repo.commits
    Yajl::Encoder.encode(commits.map { |c| c.to_hash })
  end

end
