require_relative 'database_helpers'

feature 'deleting bookmarks' do
  scenario 'delete existing bookmark' do
    add_test_data
    visit '/bookmarks'
    find_by_id("Destroy All Software", visible: false).click
    visit '/bookmarks'
    expect(page).not_to have_link('Destroy All Software', href: 'http://www.destroyallsoftware.com')
  end
end
