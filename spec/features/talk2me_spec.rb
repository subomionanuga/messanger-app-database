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

    scenario "Display multipe messages" do
      homepage
      fill_in "message", with: "Keep talking to me"
      click_button("Send")
      expect(page).to have_content "Talk to me"
      expect(page).to have_content "Keep talking to me"
    end

    scenario "Will only display first twenty characters of each message" do
      homepage
      fill_in "message", with: "Keep talking to me Subomi"
      click_button("Send")
      expect(page).to have_content "Talk to me"
      expect(page).to have_content "Keep talking to me S"
    end
  end
