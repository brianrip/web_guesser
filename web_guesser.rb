require 'sinatra'
require 'sinatra/reloader'

random_num ||= rand(100)

get '/' do
	guess = params["guess"]
	message = guess_checker(guess, random_num)
	erb :index, :locals => {:message => message}
end

def guess_checker(guess, random_num)
  return "take a guess" unless guess != nil
  guess = guess.to_i
  case
    when guess > (random_num + 5)
      "Way too high!"
    when guess > random_num
      "Too high"
    when guess < (random_num - 5)
      "Way too low"
    when guess < random_num
      "Too low"
    else
      "Correct! The secret number was #{random_num}"
    end
end
