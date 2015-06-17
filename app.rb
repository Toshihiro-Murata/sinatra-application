# coding: utf-8

require "sinatra"
require 'sinatra/reloader' if development?
require "tilt/erb"
require "./action/stream.rb"

set :public_folder, File.dirname(__FILE__) + '/static'

before do
  @site_title = "Sinatra Application"
end

after do
  logger.info "loading data"
end

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
  @title = "erb template!!!"
  erb :index
end

get "/stream" do
  Stream.new
end

get "/send_message" do
  @title = "Send a message"
  erb :send_message
end

post "/send_message" do
  @title = "Sent a message"
  @message = params[:message]
  erb :sent_message
end