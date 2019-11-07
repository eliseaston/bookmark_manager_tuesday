require 'bookmark'

describe Bookmark do
  describe '#all' do
    it 'returns all bookmarks' do
      Bookmark.create('http://www.makersacademy.com')
      Bookmark.create('http://www.destroyallsoftware.com')
      Bookmark.create('http://www.google.com')

      expect(Bookmark.all).to include("http://www.makersacademy.com")
      expect(Bookmark.all).to include("http://www.destroyallsoftware.com")
      expect(Bookmark.all).to include("http://www.google.com")
    end
  end

  describe '#create' do
    it 'user can add a new bookmark' do
      Bookmark.create("http://www.elliesmash.com")
      expect(Bookmark.all).to include("http://www.elliesmash.com")
    end
  end

end
