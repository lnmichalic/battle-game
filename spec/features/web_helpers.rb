def sign_in_and_play
  visit '/'
  fill_in('player1', with: 'Jade')
  fill_in('player2', with: 'Lubos')
  click_button('Add players')
end
