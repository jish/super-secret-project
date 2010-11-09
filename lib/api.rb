require 'cgi'
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

  get '/commit/:id.json' do |id|
    content_type :json
    repo = Grit::Repo.new(File.expand_path('../..', __FILE__))
    commit = repo.commit(params[:id])
    commit = commit.to_hash.merge(:diff => CGI.escape_html(commit.diffs.map { |d| d.diff }.join("\n")))
    Yajl::Encoder.encode(commit)
  end

end
