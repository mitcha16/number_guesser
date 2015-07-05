require 'sinatra'
require 'sinatra/reloader'

def random_number_generator
  rand(1..100)
end
NUM = random_number_generator
message = ""
get '/' do
  guess = params["guess"]
  message = check_guess(guess)
  erb :index, :locals => {:num => NUM, :message => message}
end

def check_guess(guess)
  message = ""
  if guess.to_i > NUM
    message = "Too high!"
  elsif guess.to_i < NUM
    message = "Too low!"
  elsif guess.to_i == NUM
    message = "You got it right! The SECRET NUMBER is #{NUM}"
  end
end
