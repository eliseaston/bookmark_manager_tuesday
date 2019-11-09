require 'bookmark'
require 'features/database_helpers'

describe Bookmark do
  describe '#all' do
    it 'returns all bookmarks' do
      add_test_data

      bookmarks = Bookmark.all

      expect(bookmarks.first).to be_a Bookmark
      expect(bookmarks.length).to eq(3)
      expect(bookmarks.first.title).to eq('Makers')
      expect(bookmarks.first.url).to eq('http://www.makersacademy.com')
    end
  end

  # describe '#create' do
  #   it 'user can add a new bookmark' do
  #     bookmark = Bookmark.create("http://www.elliesmash.com", "SMASH")
  #     expect(bookmark).to be_a(Bookmark)
  #   end
  # end

  describe '#delete' do
    it 'deletes a bookmark from database' do
      add_test_data
      Bookmark.delete("Destroy All Software")
      bookmarks = Bookmark.all
      expect(bookmarks.length).to eq(2)
    end
  end

end
