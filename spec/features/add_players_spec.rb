feature 'add players' do
  scenario 'allows you to add players' do
    sign_in_and_play
    expect(page).to have_content('John vs Rob')
  end
end
