
feature "displays hit points" do
  scenario "See player 2's hit points" do
    sign_in_and_play
    expect(page).to have_content("Hit Points: 50")
  end
end
