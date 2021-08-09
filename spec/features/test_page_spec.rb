feature "test page" do
  scenario "visit test page" do
    visit "/test"
    expect(page).to have_content("test page")
  end

  scenario "User inputs name" do
    sign_in_and_play
    expect(page).to have_content "Tomi Lets play Rock, Paper, Scissors!"
  end
end
