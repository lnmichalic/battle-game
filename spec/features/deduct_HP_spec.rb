feature "deduct HP" do
  scenario "attacking deduct 10 HP from player 2" do
    sign_in_and_play
    click_button("Attack")
    click_button("back to play")
    expect(page).to have_content("Lubos 50 / 60 HP")
  end
end
