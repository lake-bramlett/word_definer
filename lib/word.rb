class Word
  attr_accessor :name
  attr_reader :idea

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

  def edit(name)
     self.name = name
   end

   def delete
     @@words.delete(self.id)
   end
end
