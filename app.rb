require('sinatra')
require('sinatra/reloader')
require('./lib/word')
require('pry')
also_reload('lib/**/*.rb')

get ('/') do
  @words = Word.all
  erb(:index)
end

get ('/words') do
  @words = Word.all
  erb(:index)
  redirect to('/')
end

get ('/words/new') do
  erb(:word_new)
end

get ('/words/:id') do
  @word = Word.find(:id)
end

post ('/') do
  word = Word.new(:name => params[:name])
  word.add
  @words = Word.all
  erb(:index)
end
