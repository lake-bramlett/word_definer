require('rspec')
require('definition')

describe '#Definition' do

  before(:each) do
    Word.clear
    Definition.clear
  end

  describe('.add') do
    it("creates a new definition") do
      test_word = Word.new(:name => "colour")
      test_def = Definition.new(:body => "the quality of an object or substance with respect to light reflected by the object", :word_id => test_word.id)
      test_def.add
      @definitions = Definition.all
      expect(@definitions).to(eq([test_def]))
    end
  end

  describe('.edit') do
    it("edits a pre-existing definition") do
      test_word = Word.new(:name => "colour")
      test_def = Definition.new(:body => "the quality of an object or substance with respect to light reflected by the object", :word_id => test_word.id)
      test_def.edit(:body => "to cause to appear different from the reality")
      expect(test_def.body).to(eq("to cause to appear different from the reality"))
    end
  end

  describe('.delete') do
    it("deletes a pre-existing definition") do
      test_word = Word.new(:name => "colour")
      test_def = Definition.new(:body => "to cause to appear different from the reality", :word_id => test_word.id)
      test_def.delete
      @definitions = Definition.all
      expect(@definitions).to(eq([]))
    end
  end

end
