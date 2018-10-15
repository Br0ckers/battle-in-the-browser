#app.rb
require 'sinatra'
set :session_secret, 'super secret'

get '/cat' do
 @name = ["Amigo", "Oscar", "Viking"].sample 
  erb(:index)
end

get '/secret' do
 'This is a secret page really!!'
end



