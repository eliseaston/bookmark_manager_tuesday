feature 'visiting the homepage' do
    scenario 'shows the homepage' do
      visit '/'
      expect(page).to have_content 'Bookmark Manager'
    end
  end

feature 'viewing bookmarks' do
  scenario 'shows a list of bookmarks' do
    Bookmark.create('http://www.makersacademy.com', 'Makers')
    Bookmark.create('http://www.destroyallsoftware.com', 'Destroy All Software')
    Bookmark.create('http://www.google.com', 'Google')

    visit ('/bookmarks')

    expect(page).to have_content('Makers')
    expect(page).to have_content('Destroy All Software')
    expect(page).to have_content('Google')
  end
end
