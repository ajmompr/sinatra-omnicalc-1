require "sinatra"
require "sinatra/reloader"

get("/howdy") do
  "Hello, there! Howdy!"
  erb(:hello)
end

get("/goodbye")do
  erb(:bye)
end

get("/") do
  "
  <h1>Welcome to your Sinatra App!</h1>
  <p>Define some routes in app.rb</p>
  "
end

get("/square/new") do
  erb(:new_square_calc)
end

get("/square/results")do
  @the_num = params.fetch("users_number")
  @the_square = @the_num.to_f**2
  erb(:square_results)
end

get("/square_root/new") do
  erb(:new_sqrt_calc)
end

get("/square_root/results") do
  @the_num = params.fetch("user_number")
  @the_sqrt = @the_num.to_f**(0.5)
  erb(:sqrt_results)
end 

get("/payment/new") do
  erb(:new_payment_calc)  
end

get("/payment/results") do
  erb(:payment_results)
end 

get("/random/new") do
end
