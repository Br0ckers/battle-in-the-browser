#app.rb
require 'sinatra'
set :session_secret, 'super secret'

get '/cat' do
  erb(:index)
end

get '/secret' do
 'This is a secret page really!!'
end



