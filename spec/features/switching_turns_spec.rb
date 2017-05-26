feature 'Switch Turns' do
  scenario 'After Player 1 attacks, Player 2 gets turn to attack' do
    sign_in_and_play
    click_button('Attack')
    click_button("back to play")
    within('section .player2') do
      click_button('Attack')
    end
  end
end
