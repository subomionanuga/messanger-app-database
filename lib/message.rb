class Message

attr_reader :text, :time

  def initialize(message)
    @text = message
    @time = Time.now
  end

end
