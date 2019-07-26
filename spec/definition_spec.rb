require('rspec')
require('definition')

describe '#Definition' do

  before(:each) do
    Definition.clear()
  end

  describe('.add') do
    it("creates a new definition") do
      test_def = Definition.new(:body => "colour")
      test_def.add
      @definitions = Definition.all
      expect(@definitions).to(eq([test_def]))
    end
  end
end
