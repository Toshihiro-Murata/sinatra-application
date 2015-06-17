require "sinatra"

get "/" do
  "Hell yeah!"
end

get "/hello/:name" do
  "Hello #{params['name']}!"
end