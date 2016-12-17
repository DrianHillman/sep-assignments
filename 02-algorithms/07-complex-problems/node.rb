class Node
  attr_accessor :title
  attr_accessor :visited
  attr_accessor :distance
  attr_accessor :neighbors

  def initialize(title)
    @title = title
    @visited = false
  end
end