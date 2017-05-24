require './app'
feature 'add_players' do
  it 'allows you to add players' do
    visit '/'
    fill_in('name', with: 'John')
    click_button('Add player')
    expect(page).to have_content('John')
  end
end
