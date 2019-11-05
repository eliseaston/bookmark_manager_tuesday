feature 'visiting the homepage' do
    scenario 'shows the homepage' do
      visit '/'
      expect(page).to have_content 'Bookmark Manager'
    end
  end

feature 'viewing bookmarks' do
  scenario 'shows a list of bookmarks' do
    visit '/bookmarks'
    expect(page).to have_content("http://www.makersacademy.com")
    expect(page).to have_content("http://www.google.com")
    expect(page).to have_content("http://www.destroyallsoftware.com")
  end
end
