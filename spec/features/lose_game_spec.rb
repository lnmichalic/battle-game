feature 'lose game' do
  scenario 'if a player reach 0HP sends a message' do
    sign_in_and_play
    11.times do
      click_button('Attack')
      click_button('back to play')
    end
    expect(page).to have_content("Gameover, Lubos lost the battle")
  end
end