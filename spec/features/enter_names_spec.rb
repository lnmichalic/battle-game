require './app'
feature 'add players' do
  scenario 'allows you to add players' do
    visit '/'
    fill_in('player1', with: 'John')
    fill_in('player2', with: 'Rob')
    click_button('Add players')
    expect(page).to have_content('John vs Rob')
  end
end
