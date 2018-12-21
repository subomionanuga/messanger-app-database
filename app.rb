ENV["RACK_ENV"] ||= "development"


require "sinatra/base"
require './lib/message'
require 'data_mapper'
require 'pry'

class Talk2me < Sinatra::Base

  # configure :development do
  #   DataMapper.setup(:default, 'postgres://localhost/messanger_db')
  #   DataMapper.finalize
  # end

  get "/" do
    # binding.pry
    @messages = Message.all
    erb :index
  end

  post "/message" do
    @message = Message.create(:message => params[:message])
    redirect '/'
  end

  get "/full_message/:id" do
    # messages = session[:messages]
    # @message = messages[Integer(params[:id])]
    @message = Message.get(params[:id])
    erb(:full_message)
  end

  # run! if app_file == $0

end
