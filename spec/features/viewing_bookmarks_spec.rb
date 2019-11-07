feature 'visiting the homepage' do
    scenario 'shows the homepage' do
      visit '/'
      expect(page).to have_content 'Bookmark Manager'
    end
  end

feature 'viewing bookmarks' do
  scenario 'shows a list of bookmarks' do
    connection = PG.connect(dbname: 'bookmark_manager_test')
    Bookmark.create('http://www.makersacademy.com', 'Makers')
    Bookmark.create('http://www.destroyallsoftware.com', 'Destroy All Software')
    Bookmark.create('http://www.google.com', 'Google')

    visit ('/bookmarks')
    
    expect(page).to have_link('Makers', href: 'http://www.makersacademy.com')
    expect(page).to have_link('Destroy All Software', href: 'http://www.destroyallsoftware.com')
    expect(page).to have_link('Google', href: 'http://www.google.com')
  end
end
