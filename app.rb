require 'sinatra'
require_relative './lib/fizzbuzz_module'

get '/' do
  erb :index
end

get '/fizz' do
	 @maximum = params[:maximum]

	Fizzbuzz.start(0..@maximum)
  	Fizzbuzz.fizzling
  	@fizzling_array = Fizzbuzz.fizzing_array
  	erb :index
end

get '/secret' do
  'This is a secret page'
end

get '/form' do  
  erb :form  
end  

post '/form' do  
  "You said '#{params[:maximum]}'"
   @maximum = params[:maximum].to_i
   Fizzbuzz.start(0..@maximum)
   Fizzbuzz.fizzling
   @fizzling_array = Fizzbuzz.fizzing_array
   erb :index
end  