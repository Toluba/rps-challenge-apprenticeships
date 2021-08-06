def sign_in_and_play
  visit('/')
  fill_in "player1", with: "Tomi"
  # fill_in "player2", with: "Tom"
  click_button "submit"
end