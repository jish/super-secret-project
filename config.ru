$LOAD_PATH.unshift('lib')

require 'api'
require 'client'

use Api
run Client
