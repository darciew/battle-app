feature "attacking another player" do
  scenario "attacking player 2" do
    sign_in_and_play
    click_link("Attack Player 2!")
    expect(page).to have_content("John fireballed Jim!")
  end
end
