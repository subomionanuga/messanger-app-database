require "sinatra/base"

class Talk2me < Sinatra::Base

  enable :sessions

  get "/" do
    # session[:messages] || = []
    # @messages = session[:messages]
    erb :index
  end

  post "/message" do
    @message = params[:message]
    # message = Message.new(params[message])
    # session[:messages] << message
    redirect "/"
  end

end
