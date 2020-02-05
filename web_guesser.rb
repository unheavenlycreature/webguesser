# frozen_string_literal: true

require 'sinatra'
require 'sinatra/reloader'

secret_number = rand(101)

get '/' do
  guess = params['guess'].to_i
  message = "Correct! The secret number is #{secret_number}"
  if guess > secret_number
    message = 'Too high!'
  elsif guess < secret_number
    message = 'Too low!'
  end

  erb :index, locals: { secret_number: secret_number, message: message }
end
