require 'rubygems'
require 'rack'

class RackFun
  def call(env)
    [200, {"content-type" => "text/html"}, ["<p style='color:red'>Hello!</p>"]]
    # This middleware can either return a response array (see above) or send env
    # down to other middleware for processing.
    # env – down to middleware
    # response array – up to rack/web server
  end
end

# my_proc = Proc.new do |env|
#             puts env.inspect
#             [200, {"content-type" => "text/html"}, ["<p style='color:red'>Proc says hello!</p>"]]
#           end

# Rack::Handler::WEBrick.run(RackFun.new)
# Rack::Handler::WEBrick.run(my_proc)