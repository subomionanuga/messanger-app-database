require "sinatra/base"
require './lib/message'





class Talk2me < Sinatra::Base

  configure :development do
    DataMapper.setup(:default, 'postgres://@Carol/localhost/messanger_db')
  end

  # enable :sessions

  get "/" do
    # if session[:messages].nil?
    #   session[:messages] = []
    # end
    # session[:message] ||= []
    # @message = session[:message]
    # @messages = session[:messages]
    @messages = Message.all
    erb :index
  end

  post "/message" do
    # message = Message.new(params[:message])
    # @message = Message.create(params[:message], Time.new)
    @message = Message.create(
      :message => params[:message],
      :time => Time.now
    )
    # session[:messages] << message
    # session[:messages] << Message.new(params[:message])
    redirect '/'
  end

  get "/full_message/:id" do
    # messages = session[:messages]
    # @message = messages[Integer(params[:id])]
    @message = Message.get[:id]
    erb(:full_message)
  end

  # run! if app_file == $0

end
