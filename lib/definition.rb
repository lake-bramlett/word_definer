class Definition
  attr_reader :id
  attr_accessor :body

  @@definitions = {}
  @@total_rows = {}

  def initialize(attributes)
    @body = attributes.fetch(:body)
    @id = id || @@total_rows += 1
  end

  # Class methods
  def self.all
    @@definitions.values
  end

  def self.clear
    @@definitions = {}
    @@total_rows = 0
  end

  def self.find(id)
    @@definitions[id]
  end

  def self.find_by_word(id)
    definitions = []
    @@definitions.values.each do |definition|
      if definition.word_id == id
        definitions.push(definition)
      end
    end
    definitions
  end

  # Instance Methods
  def add
    @@definitions[self.id] = self
  end

  def edit(attributes)
     self.body = attributes.fetch(:body)
  end

  def delete
    @@definitions.delete(self.id)
  end

  def word
      Word.find(self.word_id)
  end

end
