class Word
  attr_accessor :name
  attr_reader :id

  @@words = {}
  @@total_rows = 0

  def initialize(attributes)
    @name = attributes.fetch(:name)
    @id = id || @@total_rows += 1
  end

  # Class methods
  def self.all
    @@words.values
  end

  def self.clear
    @@words = {}
    @@total_rows = 0
  end

  def self.find(id)
    @@words[id]
  end

  # Instance Methods
  def add
    @@words[self.id] = self
  end

  def edit(attributes)
     self.name = attributes.fetch(:name)
  end

  def delete
    @@words.delete(self.id)
  end

  def definitions
    Definition.find_by_word(self.id)
  end
end
