require 'pg'

class Message

attr_reader :text, :time

  # def self.all
  #   connection = PG.connect(dbname: 'messanger_db')
  #   connection.exec('SELECT * FROM messages;')
  # end

  def initialize(text)
    @text = text
    @time = Time.now.strftime("%d-%m-%Y %H:%M:%S")
  end

  def twenty_chars
    @text[0...20]
  end

end
