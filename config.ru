$LOAD_PATH.unshift('lib')

require 'api'
require 'client'

use Client
run Api
