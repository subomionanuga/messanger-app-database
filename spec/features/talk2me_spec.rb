feature "login screen" do
  scenario "allow user to login with details and see homepage" do
    visit("/")
    expect(page).to have_content "TALK2ME"
    fill_in "username", with: "Beatrice"
    click_button "login"
    expect(page).to have_content "Welcome, Beatrice!"
  end
end
