feature 'Switch Turns' do
  scenario 'Shows which players turn it is' do
    sign_in_and_play
    expect(page).to have_content("Jade's Turn")
  end

  scenario "After First Player attacks, it is Second Player's turn" do
    sign_in_and_play
    click_button("Attack")
    click_button("back to play")
    expect(page).to have_content("Lubos's Turn")
  end
end
