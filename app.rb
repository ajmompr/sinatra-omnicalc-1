require "sinatra"
require "sinatra/reloader"

get("/howdy") do
  "Hello, there! Howdy!"
  erb(:hello)
end

get("/goodbye")do
  erb(:bye)
end


get("/square/new") do
  erb(:new_square_calc)
end

get("/square/results")do
  erb(:square_results)
end

get("/") do
  "
  <h1>Welcome to your Sinatra App!</h1>
  <p>Define some routes in app.rb</p>
  "
end

get("/square_root/new") do
end

get("/payment/new") do  
end

get("/random/new") do
end
