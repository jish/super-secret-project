module ClientHelpers

  def jquery_tag
    version = '1.4.2'

    if ENV['RACK_ENV'] == 'development'
      path = "/javascripts/vendor/jquery-#{version}.js"
    else
      path = "http://ajax.googleapis.com/ajax/libs/jquery/#{version}/jquery.min.js"
    end

    "<script type=\"text/javascript\" src=\"#{path}\"></script>"
  end

end
