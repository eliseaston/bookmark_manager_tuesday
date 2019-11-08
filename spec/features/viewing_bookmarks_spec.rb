require_relative 'database_helpers'

feature 'visiting the homepage' do
    scenario 'shows the homepage' do
      visit '/'
      expect(page).to have_content 'Bookmark Manager'
    end
  end

feature 'viewing bookmarks' do
  scenario 'shows a list of bookmarks' do
    add_test_data
    visit ('/bookmarks')

    expect(page).to have_link('Makers', href: 'http://www.makersacademy.com')
    expect(page).to have_link('Destroy All Software', href: 'http://www.destroyallsoftware.com')
    expect(page).to have_link('Google', href: 'http://www.google.com')
  end
end
