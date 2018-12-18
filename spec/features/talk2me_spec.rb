feature "Homepage" do
  scenario "Show user homepage and allow messages to be sent" do
    visit("/")
    expect(page).to have_content "TALK2ME"
    fill_in "message", with: "Talk to me"
    click_button "Send"
    # expect(page).to have_content "Welcome, Beatrice!"
  end
end

feature "Message" do
  scenario "Display messages on homepage" do
    homepage
    expect(page).to have_content "Talk to me"
    end
  end
