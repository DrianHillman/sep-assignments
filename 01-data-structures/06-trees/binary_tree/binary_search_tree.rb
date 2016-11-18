require_relative 'node'

class BinarySearchTree
  attr_accessor :root

  def initialize(root)
    @root = root
  end

  def insert(root, node)
    return false if root.nil? || root != @root
    finder = root
    
    while finder
      if node.rating <= finder.rating
        if finder.left.nil?
          finder.left = node
          return
        else 
          finder = finder.left
        end
      elsif node.rating > finder.rating
        if finder.right.nil?
          finder.right = node
          return
        else
          finder = finder.right
        end
      end
    end
  end

  # Recursive Depth First Search
  def find(root, data)
    return nil if root.nil? || data.nil?
    
    if root.title === data
      return root
    elsif root.left != nil
      find(root.left, data)
    elsif root.right != nil
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
    elsif find(root,data).nil?
      puts "Deleted!"
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
end
