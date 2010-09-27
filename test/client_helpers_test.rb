require 'minitest/spec'
require 'client_helpers'

MiniTest::Unit.autorun

class ClientHelpersClass
  include ClientHelpers
end

describe ClientHelpers do

  it 'should include the vendored copy of jquery in dev' do
    ENV['RACK_ENV'] = 'development'
    klass = ClientHelpersClass.new
    klass.jquery_tag.must_match(/vendor/)
  end

  it "should include the copy on google's cdn in production" do
    ENV['RACK_ENV'] = 'production'
    klass = ClientHelpersClass.new
    klass.jquery_tag.must_match(/google/)
  end

end
