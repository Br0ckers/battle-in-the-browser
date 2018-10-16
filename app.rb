#app.rb
require 'sinatra'
set :session_secret, 'super secret'

get '/random-cat' do
 @name = ["Amigo", "Oscar", "Viking"].sample 
  erb(:index)
end

get '/secret' do
 'This is a secret page really!!'
end

get '/named-cat' do
  p params
  @name = params[:name]
  erb :index
end

# first, let's write a form-displaying route
get '/cat-form' do
  erb :cat_form
end

post '/named-cat' do
  p params
  @name = params[:name]
  erb :index
end


