require "message"

describe Message do

  subject(:message) {described_class.new("Talk to me")}
  it "expects the message class to store messages" do
    expect(message.text).to eq "Talk to me"
  end

end
