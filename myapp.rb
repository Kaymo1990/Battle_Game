require 'sinatra'
set :session_secret, 'super secret'

get '/' do
  'Hello world!'
end

get '/secret/second' do
  'do you want to play another game'
end

require 'sinatra'

get '/random-cat' do
  @cat_name = ["A", "B", "C"].sample
  erb(:index)
end

post '/named-cat' do
  p params
  @name = params[:name]
  @age = params[:age]
  erb :index
end

get '/cat-form' do
  erb :cat_form
end
