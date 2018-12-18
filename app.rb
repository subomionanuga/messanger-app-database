require "sinatra/base"
require './lib/message'

class Talk2me < Sinatra::Base

  enable :sessions

  get "/" do
    # session[:messages] ||= []
    @message = session[:message]
    erb :index
  end

  post "/message" do
    session[:message] = Message.new(params[:message])
    # session[:messages] << message
    redirect '/'

  end

  # run! if app_file == $0

end
