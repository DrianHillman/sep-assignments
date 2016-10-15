require_relative 'pixel'

class Screen
  attr_accessor :width
  attr_accessor :height
  attr_accessor :matrix

  def initialize(width, height)
    self.width, self.height = width, height
    self.matrix = {}
  end

  # Insert a Pixel at x, y
  def insert(pixel, x, y)
    if inbounds(x,y) 
      self.matrix[[x,y]] = pixel
    end
  end

  def at(x, y)
    self.matrix[[x,y]]
  end

private

  def inbounds(x, y)
    x >= 0 && y >= 0
  end
  
end