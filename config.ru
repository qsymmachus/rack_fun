$LOAD_PATH.unshift '.'

require 'rack_fun'

# Migrates 'Rack::Handler::WEBrick.run(RackFun.new)' from rack_fun.rb
run(RackFun.new)