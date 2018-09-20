
feature "attacking another player" do

  scenario "attacks a player" do
    sign_in_and_play
    click_link("Attack Player 2!")
    expect(page).to have_content("John fireballed Jim!")
  end

  xscenario "attack reduces player 2's HP by 10" do
    sign_in_and_play
    click_button("Attack Player 2!")
    click_link 'OK'
    expect(page).not_to have_content 'Mittens: 60HP'
    expect(page).to have_content 'Mittens: 50HP'
  end
end
