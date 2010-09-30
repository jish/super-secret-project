require 'minitest/autorun'
require 'client'

describe Client do

  before do
    @app = Client.new
  end

  it 'should return a 200 on the index page' do
    request = Rack::MockRequest.new(@app)
    response = request.get('/')
    response.status.must_equal 200
  end

  it 'should load files from the public directory' do
    request = Rack::MockRequest.new(@app)
    response = request.get('/javascripts/vendor/jquery-1.4.2.js')
    response.status.must_equal 200
  end

end
