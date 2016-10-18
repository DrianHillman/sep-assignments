require_relative 'hash_item'

class HashClass 

  def initialize(size)
    @items = Array.new(size)
  end

  def []=(key, value)
    true_index = self.index(key, size)
    
    while @items[true_index] != nil && @items[true_index].value != value do
      self.resize
    end
    
    @items[true_index] = HashItem.new(key, value)
  end


  def [](key)
    true_index = self.index(key, size)
    @items[true_index].value
  end

  def resize
    temp = @items
    @items = Array.new(size*2)
    
    temp.each { |x|
      if x != nil
        true_index = index(x.key, size)
        @items[true_index] = x
      end
    }
  end

  # Returns a unique, deterministically reproducible index into an array
  # We are hashing based on strings, let's use the ascii value of each string as
  # a starting point.
  def index(key, size)
    ascii = 0
    
    key.each_byte do |x|
      ascii += x
    end
    
    return ascii % size
  end

  # Simple method to return the number of items in the hash
  def size
    @items.length
  end

end