require_relative 'node'

class MinBinaryHeap
  attr_accessor :root

  def initialize(root)
    @root = root
  end

  def insert(root, node)
    return false if root.nil?
    
    if node.rating <= root.rating
      if root.left.nil?
        root.left = node
        heap_order(root)
        return
      else 
        insert(root.left, node)
      end
    elsif node.rating > root.rating
      if root.right.nil?
        root.right = node
        heap_order(root) 
        return
      else
        insert(root.right, node)
      end
    end
  end

  # Recursive Depth First Search
  def find(root, data)
    return nil if root.nil? || data.nil?
    
    if root.title === data
      return root
    elsif root.left
      find(root.left, data)
    elsif root.right
      find(root.right, data)
    end
  end

  def delete(root, data)
    return nil if root.nil? || data.nil?
    
    if root.left && root.left.title === data
      right_remains = root.left.right if root.left.right
      root.left = root.left.left
      insert(root, right_remains) if right_remains
    elsif root.right && root.right.title === data
      left_remains = root.right.left if root.right.left
      root.right = root.right.right
      insert(root, left_remains) if left_remains
    elsif root.left
      delete(root.left, data)
    elsif root.right
      delete(root.right, data)
    end
  end

  # Recursive Breadth First Search
  def printf(children=nil)
    
    queue = [@root]
    output = ""
    
    until queue.empty?
      traversal = queue.shift
      queue << traversal.left if traversal.left
      queue << traversal.right if traversal.right
      
      output += "#{traversal.title}: #{traversal.rating}\n"
    end
    
    puts output
  end
  
  private
  def heap_order(root)
    return nil if root.nil?
    
    if root.left && root.right && root.left.rating > root.right.rating
      copy = root.left.clone
      root.left.title = root.right.title
      root.left.rating = root.right.rating
      root.right.title = copy.title
      root.right.rating = copy.rating
      heap_order(root)
    elsif root.left && root.rating > root.left.rating
      copy = root.left.clone
      root.left.title = root.title
      root.left.rating = root.rating
      root.title = copy.title
      root.rating = copy.rating
      heap_order(@root)
    elsif root.right && root.rating > root.right.rating
      copy = root.right.clone
      root.right.title = root.title
      root.right.rating = root.rating
      root.title = copy.title
      root.rating = copy.rating
      heap_order(@root)
    elsif root.left
      heap_order(root.left)
    elsif root.right
      heap_order(root.right)
    end
  end
end
