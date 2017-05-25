def sign_in_and_play
  visit '/'
  fill_in('player1', with: 'John')
  fill_in('player2', with: 'Rob')
  click_button('Add players')
end
