require 'sinatra/base'
require './lib/bookmark'

class Bookmark_Manager < Sinatra::Base
  enable :sessions
  set :session_secret, 'super secret'

  get '/' do
    "Bookmark Manager"
  end

  get '/bookmarks' do
    @bookmarks = Bookmark.all
    erb :'bookmarks/index'
  end

  run! if app_file == $0
end
