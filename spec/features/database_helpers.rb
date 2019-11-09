require 'pg'

def add_test_data
  connection = PG.connect(dbname: 'bookmark_manager_test')
  Bookmark.create('http://www.makersacademy.com', 'Makers')
  Bookmark.create('http://www.destroyallsoftware.com', 'Destroy All Software')
  Bookmark.create('http://www.google.com', 'Google')
end
