feature 'player1 choices' do
  scenario 'Player can choose rock' do 
    sign_in_and_play
    click_button 'Rock'
    expect(page).to have_content 'Tomi chose rock'
  end

  scenario 'Player can choose paper' do 
    sign_in_and_play
    click_button 'Paper'
    expect(page).to have_content 'Tomi chose paper'
  end

  scenario 'Player can choose scissors' do 
    sign_in_and_play
    click_button 'Scissors'
    expect(page).to have_content 'Tomi chose scissors'
  end

end