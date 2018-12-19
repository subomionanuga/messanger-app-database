require "sinatra/base"
require './lib/message'





class Talk2me < Sinatra::Base

  configure :development do
    DataMapper.setup(:default, 'postgres://subomi-makers@Subomis-MacBook-Pro.local/messanger_db')
  end

  enable :sessions

  get "/" do
    if session[:messages].nil?
      session[:messages] = []
    end
    # session[:message] ||= []
    # @message = session[:message]
    @messages = session[:messages]
    erb :index
  end

  post "/message" do
    message = Message.new(params[:message])
    session[:messages] << message
    # session[:messages] << Message.new(params[:message])
    redirect '/'
  end

  get "/full_message/:id" do
    messages = session[:messages]
    @message = messages[Integer(params[:id])]
    erb(:full_message)
  end

  # run! if app_file == $0

end
