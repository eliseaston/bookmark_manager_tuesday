require 'bookmark'

describe Bookmark do
  describe '#all' do
    it 'returns all bookmarks' do
      Bookmark.create('http://www.makersacademy.com', 'Makers')
      Bookmark.create('http://www.destroyallsoftware.com', 'Destroy All Software')
      Bookmark.create('http://www.google.com', 'Google')

      expect(Bookmark.all).to include('Makers')
      expect(Bookmark.all).to include('Destroy All Software')
      expect(Bookmark.all).to include('Google')
    end
  end

  describe '#create' do
    it 'user can add a new bookmark' do
      Bookmark.create("http://www.elliesmash.com", "SMASH")
      expect(Bookmark.all).to include("SMASH")
    end
  end

end
