require './app'
feature 'homepage' do
  it 'shows "Testing infrastructure working!"' do
    visit '/'
    expect(page).to have_content 'Testing infrastructure working!'
  end
end
