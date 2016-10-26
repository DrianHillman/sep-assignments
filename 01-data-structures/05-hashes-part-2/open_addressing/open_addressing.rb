require_relative 'node'

class OpenAddressing
  
  def initialize(size)
    @items = Array.new(size)
  end

  def []=(key, value)
    true_index = next_open_index(index(key, size))
    
    while true_index === -1
      self.resize
      true_index = next_open_index(index(key, size))
      return
    end
    
    @items[true_index] = Node.new(key, value)
  end

  def [](key)
    @items.each { |x|
      if x != nil && x.key === key
        return x.value
      end
    }
    return nil
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

  # Given an index, find the next open index in @items
  def next_open_index(index)
    #Check closest indices to the right
    for x in index...size
      if @items[x] === nil 
        return x 
      end
    end
    #2nd pass, Check all indices
    for y in 0...index
      if @items[y] === nil
        return y
      end
    end
    return -1
  end

  # Simple method to return the number of items in the hash
  def size
    @items.length
  end

  # Resize the hash
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
end