def sign_in_and_play
  visit('/')
  fill_in "player1", with: "Tomi"
  click_button "submit"
end