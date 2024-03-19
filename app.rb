require 'sinatra'
require 'sinatra/reloader'

get('/') do
  "Home page"
  erb(:home, {:layout => :application_layout})
end

get ("/rock") do
  @player1 = "rock"
  @result = "N/A"
  
  array = ["rock", "paper", "scissors"]
  @player2 = array.sample
  
  if @player2 == @player1
    @result = "tie"
  elsif @player2 == "paper"  
    @result = "lost"
  else
    @result = "won"
  end

  erb(:game_results, {:layout => :application_layout})
end

get ("/paper") do
  @player1 = "paper"
  @result = "N/A"
  
  array = ["rock", "paper", "scissors"]
  @player2 = array.sample
  
  if @player2 == @player1
    @result = "tie"
  elsif @player2 == "scissors"  
    @result = "lost"
  else
    @result = "won"
  end

  erb(:game_results, {:layout => :application_layout})
end

get ("/scissors") do
  @player1 = "scissors"
  @result = "N/A"
  
  array = ["rock", "paper", "scissors"]
  @player2 = array.sample
  
  if @player2 == @player1
    @result = "tie"
  elsif @player2 == "rock"  
    @result = "lost"
  else
    @result = "won"
  end

  erb(:game_results, {:layout => :application_layout})
end
