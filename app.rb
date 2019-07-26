require('sinatra')
require('sinatra/reloader')
require('./lib/word')
require('pry')
also_reload('lib/**/*.rb')

get ('/') do
  @boards = Board.all
  erb(:index)
end
