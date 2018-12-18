class Message

attr_reader :text, :time

  def initialize(text)
    @text = text
    @time = Time.now.strftime("%d-%m-%Y %H:%M:%S")
  end

end
