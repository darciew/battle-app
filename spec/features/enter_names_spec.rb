feature "players can input their names" do
  scenario "into a form" do
    visit '/'
    fill_in("Player1_Name", with: "John")
    fill_in("Player2_Name", with: "Jim")
    click_button("Submit")
    expect(page).to have_content("John vs Jim")
  end
end
