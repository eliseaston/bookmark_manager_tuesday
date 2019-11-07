require 'bookmark'

describe Bookmark do
  describe '#all' do
    it 'returns all bookmarks' do
      connection = PG.connect(dbname: 'bookmark_manager_test')

      Bookmark.create('http://www.makersacademy.com', 'Makers')
      Bookmark.create('http://www.destroyallsoftware.com', 'Destroy All Software')
      Bookmark.create('http://www.google.com', 'Google')

      bookmarks = Bookmark.all

      expect(bookmarks.first).to be_a Bookmark
      expect(bookmarks.first.title).to eq('Makers')
      expect(bookmarks.first.url).to eq('http://www.makersacademy.com')
    end
  end

  # describe '#create' do
  #   it 'user can add a new bookmark' do
  #     Bookmark.create("http://www.elliesmash.com", "SMASH")
  #     expect(Bookmark.all).to include("SMASH")
  #   end
  # end

end
