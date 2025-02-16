feature 'adding new bookmark' do
  scenario 'add new bookmark' do
    visit '/add'
    fill_in 'bookmark_title', with: 'SMASH'
    fill_in 'bookmark_url', with: 'http://www.elliesmash.com'
    click_button('Add')
    visit '/bookmarks'
    expect(page).to have_content("SMASH")
  end
end
