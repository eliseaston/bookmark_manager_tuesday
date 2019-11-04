require 'sinatra/base'

class Bookmark_Manager < Sinatra::Base
  enable :sessions
  set :session_secret, 'super secret'

  get '/' do
    erb :index
  end

  run! if app_file == $0
end
