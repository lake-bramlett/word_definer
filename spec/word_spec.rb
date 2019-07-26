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

end
