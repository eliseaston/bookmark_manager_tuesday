require 'sinatra/base'
require 'pg'
require './lib/bookmark'

class Bookmark_Manager < Sinatra::Base
  enable :sessions
  set :session_secret, 'super secret'

  get '/' do
    erb(:index)
  end

  get '/bookmarks' do
    @bookmarks = Bookmark.all
    erb(:bookmarks)
  end

  get '/add' do
    erb(:add)
  end

  post '/new-bookmark' do
    p params
    Bookmark.create(params[:bookmark_url], params[:bookmark_title])
    redirect '/bookmarks'
  end

  post '/delete' do
    
  end

  run! if app_file == $0
end
