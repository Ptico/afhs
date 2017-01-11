require 'sinatra'

set :public_folder, File.expand_path('../srv', File.dirname(__FILE__))

get '/' do
  erb :index
end
