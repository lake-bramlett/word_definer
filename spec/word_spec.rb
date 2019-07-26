require('rspec')
require('word')

describe '#Word' do

  before(:each) do
    Word.clear()
  end

  describe('.add') do
    it("creates a new word") do
      test_word = Word.new(:name => "colour")
      test_word.add
      @words = Word.all
      expect(@words).to(eq([test_word]))
    end
  end

  describe('.edit') do
    it("edits a word's name") do
      test_word = Word.new(:name => "colour")
      test_word.edit(:name => "color")
      expect(test_word.name).to(eq("color"))
    end
  end

  describe('.delete') do
    it("deletes a word") do
      test_word = Word.new(:name => "colour")
      test_word.add
      test_word.delete
      @words = Word.all
      expect(@words).to(eq([]))
    end
  end

end
