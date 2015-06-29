require 'sinatra'
require 'sinatra/reloader'

def random_number_generator
  rand(1..100)
end
num = random_number_generator
get '/' do
  erb :index, :locals => {:num => num}
end
