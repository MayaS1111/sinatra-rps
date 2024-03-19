require 'sinatra'
require 'sinatra/reloader'

get('/') do
  "Home page"
  erb(:home, {:layout => :application_layout})
end

get ("/rock") do
  erb(:rock, {:layout => :application_layout})
end
