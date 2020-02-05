# frozen_string_literal: true

require 'sinatra'
require 'sinatra/reloader'

secret_number = rand(101)
remaining_guesses = 5

get '/' do
  message = ''
  guess = params['guess'].to_i

  if guess == secret_number
    message = "Correct, the secret number is #{secret_number}!"
    remaining_guesses = 5
    secret_number = rand(101)
    color = 'green'
  else
    remaining_guesses -= 1
    if remaining_guesses.zero?
      message = "Game over! The secret number was #{secret_number}. Guess the new number!"
      remaining_guesses = 5
      secret_number = rand(101)
      color = 'red'
    else
      message = guess > secret_number ? 'Too high!' : 'Too low!'
      color = (secret_number - guess).abs < 30 ? 'lightpink' : 'red'
    end
  end

  erb :index, locals: {
    secret_number: secret_number,
    message: message,
    color: color
  }
end
