require "sinatra"
require "sinatra/reloader"

get("/howdy") do
  "Hello, there! Howdy!"
  erb(:hello)
end

get("/") do
  "
  <h1>Welcome to your Sinatra App!</h1>
  <p>Define some routes in app.rb</p>
  "
end


# get("/square") do
# end

# get("/square_root") do
# end

# get("/payment") do  
# end

# get("/random") do
# end
