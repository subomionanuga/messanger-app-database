# require "pg"
require "data_mapper"

DataMapper.setup(:default, "postgres://localhost/messanger_db")
# DataMapper::Logger.new($stdout, :debug)


class Message
  include DataMapper::Resource

  property :id, Serial
  property :message, String
  property :time, DateTime

# attr_reader :text, :time

  # def self.all
  #   connection = PG.connect(dbname: 'messanger_db')
  #   connection.exec('SELECT * FROM messages;')
  # end

  # def initialize(text)
  #   @text = text
  #   @time = Time.now.strftime("%d-%m-%Y %H:%M:%S")
  # end

  # def twenty_chars
  #   @text[0...20]
  # end

  # def message_count
  #   counter = 0
  #
  #   counter += 1
  # end

end


DataMapper.finalize

DataMapper.auto_upgrade!