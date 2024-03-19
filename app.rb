require 'sinatra'
require 'sinatra/reloader'

get('/') do
  "Home page"
  erb(:home, {:layout => :application_layout})
end

get ("/rock") do
  2player1 = "rock"
  
  array = ["rock", "paper", "scissors"]
  @player2 = array.sample

  


  2result = "N/A"



  erb(:rock, {:layout => :application_layout})
end
