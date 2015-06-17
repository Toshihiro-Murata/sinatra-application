require "sinatra"
require "tilt/erb"

get "/" do
  "Hell yeah!"
end

get "/hello/:name" do
  "Hello #{params['name']}!"
end

get "/test" do
  "Test!!!"
end

get "/erb" do
  erb :index
end