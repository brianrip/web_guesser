require 'sinatra'
require 'sinatra/reloader'

secret = rand(100)

get '/' do
  "The SECRET number is #{secret}"
end
