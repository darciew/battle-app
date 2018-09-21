  def sign_in_and_play
    visit '/'
    fill_in("player1_name", with: "John")
    fill_in("player2_name", with: "Jim")
    click_button("Submit")
  end

def to_the_death
  click_button("Attack Player 2!")
  click_button("Attack Player 1!")
  click_button("Attack Player 2!")
  click_button("Attack Player 1!")
  click_button("Attack Player 2!")
  click_button("Attack Player 1!")
  click_button("Attack Player 2!")
  click_button("Attack Player 1!")
  click_button("Attack Player 2!")
  click_button("Attack Player 1!")
  click_button("Attack Player 2!")
  click_button("Attack Player 1!")
  click_button("Attack Player 2!")
  click_button("Attack Player 1!")
  click_button("Attack Player 2!")
  click_button("Attack Player 1!")
  click_button("Attack Player 2!")
  click_button("Attack Player 1!")
  click_button("Attack Player 2!")
end
