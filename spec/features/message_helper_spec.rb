def homepage
  visit("/")
  fill_in "message", with: "Talk to me"
  click_button "Send"
end
