require "sinatra/base"

class Talk2me < Sinatra::Base

  get "/" do
    erb :index
  end

  post "/homepage" do
    "Welcome, Beatrice!"
  end

end
