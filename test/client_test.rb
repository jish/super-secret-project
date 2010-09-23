require 'minitest/spec'
require 'client'

MiniTest::Unit.autorun

describe Client do

  before do
    @app = Client.new
  end

  it 'should return a 200 on the index page' do
    request = Rack::MockRequest.new(@app)
    response = request.get('/')
    response.status.must_equal 200
  end

end
