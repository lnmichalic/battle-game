feature 'Attack' do
  scenario 'Player1 attacks Player 2' do
    sign_in_and_play
    click_button('Attack')
    expect(page).to have_content('Jade has attacked Lubos')
  end

  scenario 'Player2 attacks Player1' do
    sign_in_and_play
    click_button('Attack')
    click_button('back to play')
    click_button('Attack')
    expect(page).not_to have_content('Jade has attacked Lubos')
    expect(page).to have_content('Lubos has attacked Jade')
  end

  scenario "Player 2's attack reduces the Player 1 HP by 10" do
    sign_in_and_play
    click_button 'Attack'
    click_button 'back to play'
    click_button 'Attack'
    click_button 'back to play'
    expect(page).not_to have_content 'Jade 60 / 60 HP'
    expect(page).to have_content 'Jade 50 / 60 HP'
  end
end
