
feature "players can input their names" do
  scenario "enter name" do
    sign_in_and_play
    expect(page).to have_content("John vs Jim")
  end
end
