require 'minitest/spec'
require 'api'

MiniTest::Unit.autorun

describe Api do

  before do
    @app = Api.new
  end

  describe 'the commits resource' do
    before do
      request = Rack::MockRequest.new(@app)
      @response = request.get('/commits.json')
    end

    it 'should return a 200' do
      @response.status.must_equal 200
    end

    it 'should serve with a json content type' do
      @response.content_type.must_equal 'application/json'
    end
  end

end
