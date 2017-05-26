feature "check opponent's HP" do
  scenario 'player1 can check player2 points' do
    sign_in_and_play
    expect(page).to have_content('Lubos 60 / 60 HP')
  end

  scenario 'player1 can see his own HP' do
    sign_in_and_play
    expect(page).to have_content('Jade 60 / 60 HP')
  end
end
