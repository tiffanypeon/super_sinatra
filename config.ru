require './app'
use Rack::Static, :urls => ["/public"]
run SuperSinatra::App.new