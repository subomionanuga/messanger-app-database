require "sinatra/base"
require './lib/message'

class Talk2me < Sinatra::Base

  enable :sessions

  get "/" do
    if session[:messages].nil?
      session[:messages] = []
    end
    # session[:message] ||= []
    @message = session[:message]
    @messages = session[:messages]

    erb :index
  end

  post "/message" do
    session[:message] = Message.new(params[:message])
    session[:messages] << session[:message]
    redirect '/'

  end

  # run! if app_file == $0

end
