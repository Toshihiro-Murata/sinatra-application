# coding: utf-8

require "sinatra"
require 'sinatra/reloader' if development?
require "tilt/erb"
require "./action/stream.rb"

set :public_folder, File.dirname(__FILE__) + '/static'

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