feature "check opponent's HP" do
  scenario 'player can check points' do
    sign_in_and_play
    expect(page).to have_content('60 / 60 HP')
  end
end
