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
  erb(:new_square_calc)
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
  @apr = (params.fetch("user_apr").to_f)/100
  @apr_display = (params.fetch("user_apr").to_f).to_fs(:percentage, { :precision => 4 } )
  @num_years = params.fetch("user_years").to_i
  @present_value = params.fetch("user_pv").to_i
  @present_val_display = @present_value.to_fs(:currency)

  @num_periods = @num_years * 12
  @rate_per_period = @apr/12

  @numerator = @rate_per_period * @present_value
  @denominator = 1 - ((1 + @rate_per_period)**(-@num_periods))

  @payment = (@numerator/@denominator).to_fs(:currency)

  erb(:payment_results)
end 

get("/random/new") do
end

get("random/results") do
end
