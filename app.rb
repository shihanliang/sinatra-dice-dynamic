require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:home)
end

get("/dice/:num/:sides") do
  @num = params[:num].to_i
  @sides = params[:sides].to_i

  @rolls = Array.new(@num) { rand(1..@sides) }
  @title = "#{@num}d#{@sides}"

  erb(:dice)
end
