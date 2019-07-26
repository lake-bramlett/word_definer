require('sinatra')
require('sinatra/reloader')
require('./lib/word')
require('./lib/definition')
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
  @word = Word.find(params[:id].to_i())
  erb(:word)
end

get ('/word/:id/edit') do
  @word = Word.find(params[:id].to_i())
  erb(:word_edit)
end

get ('/words/:id/definition/:definition_id') do
  @definition = Definition.find(params[:definition_id].to_i())
  erb(:definition)
end

patch ('/words/:id') do
  @word = Word.find(params[:id].to_i())
  @word.edit(:name => params[:name])
  erb(:word)
end


post ('/') do
  word = Word.new(:name => params[:name])
  word.add
  @words = Word.all
  erb(:index)
end

post ('/words/:id/definitions') do
  @word = Word.find(params[:id].to_i())
  definition = Definition.new(:body => params[:body], :word_id => @word.id)
  definition.add
  erb(:word)
  redirect to("/words/#{params[:id]}")
end

delete ('/words/:id') do
  @word = Word.find(params[:id].to_i())
  @word.delete()
  @words = Word.all
  redirect to('/')
  erb(:index)
end


delete ('/words/:id/definitions/:definition_id') do
  definition = Definition.find(params[:definition_id].to_i())
  definition.delete
  @word = Word.find(params[:id].to_i())
  erb(:word)
  redirect to("/words/#{params[:id]}")
end
