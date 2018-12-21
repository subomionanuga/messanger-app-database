# require "pg"
require "data_mapper"

DataMapper.setup(:default, "postgres://localhost/messanger_db/#{ ENV["RACK_ENV"] }")
# DataMapper::Logger.new($stdout, :debug)

class Message
  include DataMapper::Resource

  property :id, Serial
  property :message, String
  property :created_at, DateTime

# attr_reader :text, :time

  # def initialize(text)
  #   @text = text
  #   @time = Time.now.strftime("%d-%m-%Y %H:%M:%S")
  # end

  def twenty_chars
    @message[0...20]
  end

end

DataMapper.finalize

DataMapper.auto_upgrade!
