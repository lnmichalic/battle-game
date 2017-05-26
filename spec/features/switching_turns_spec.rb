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

  scenario "After Second Player attacks, it is First Player's turn" do
    sign_in_and_play
    click_button("Attack")
    click_button("back to play")
    click_button("Attack")
    click_button("back to play")
    expect(page).not_to have_content("Lubos's Turn")
    expect(page).to have_content("Jade's Turn")
  end
end
