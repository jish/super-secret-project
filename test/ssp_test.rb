require 'minitest/spec'
require 'rack/mock'
require 'ssp'

MiniTest::Unit.autorun

describe Ssp do

  before do
    @app = Ssp.new
  end

  it 'should return a 200 on the index page' do
    request = Rack::MockRequest.new(@app)
    response = request.get('/')
    response.status.must_equal 200
  end

end
