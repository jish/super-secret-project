require 'minitest/autorun'
require 'api'

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
      @response.content_type.must_equal 'application/json;charset=utf-8'
    end
  end

  describe 'commit#show' do
    before do
      request = Rack::MockRequest.new(@app)
      @response = request.get('/commit/4c62fee39c9665623c9ac9ac0bcc86ba41530afd.json')
    end

    it 'should respond with success' do
      @response.status.must_equal 200
    end

    it 'should serve with a json content type' do
      @response.content_type.must_equal 'application/json;charset=utf-8'
    end

    it 'should include a diff attribute' do
      @response.body.must_match /"diff":/
    end

    it 'should include a cache control header' do
      @response.headers['Cache-Control'].must_match /max-age=/
    end
  end

end
