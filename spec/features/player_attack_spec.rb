
feature "attacking another player" do

  scenario "attacks a player" do
    sign_in_and_play
    click_button("Attack Player 2!")
    expect(page).to have_content("John fireballed Jim!")
  end

  scenario "attack reduces player 2's HP by 10" do
    sign_in_and_play
    srand(4000)
    click_button("Attack Player 2!")
    expect(page).not_to have_content 'Jim: 50HP'
    expect(page).to have_content 'Jim: 44HP'
  end

  scenario "mulptiple attacks reduces player's HP's" do
    sign_in_and_play
    srand(4000)
    click_button("Attack Player 2!")
    click_button("Attack Player 1!")
    click_button("Attack Player 2!")
    expect(page).not_to have_content 'Jim: 44HP'
    expect(page).to have_content 'Jim: 43HP'
  end


end
