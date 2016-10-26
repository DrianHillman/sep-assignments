require_relative 'node'

class LinkedList
  attr_accessor :head
  attr_accessor :tail

  # This method creates a new `Node` using `data`, and inserts it at the end of the list.
  def add_to_tail(node)
    if @head === nil || @tail === nil
      @head = node
      @tail = node
    else
      @tail.next = node
      @tail = node
    end
  end

  # This method removes the last node in the lists and must keep the rest of the list intact.
  def remove_tail
    if @head.next === nil
      @head = nil
      @tail = nil
      return nil
    end
    
    iterator = @head
    
    while iterator.next != nil do
      finder = iterator
      iterator = iterator.next
    end 
    
    @tail = finder
    @tail.next = nil
    return @tail
  end

  # This method prints out a representation of the list.
  def print
    iterator = @head
    
    while iterator != nil do
      puts iterator.data
      iterator = iterator.next
    end
  end

  # This method removes `node` from the list and must keep the rest of the list intact.
  def delete(node)
    iterator = @head
    
    while iterator.next != nil do
      if node === @head
        @head = @head.next
      elsif iterator.next === node
        iterator.next = node.next
        node = nil
      end
      
      iterator = iterator.next
      
      if iterator.next === @tail && node === @tail
        iterator.next = nil
        @tail = iterator
      end
    end
  end

  # This method adds `node` to the front of the list and must set the list's head to `node`.
  def add_to_front(node)
    node.next = @head
    @head = node
  end

  # This method removes and returns the first node in the Linked List and must set Linked List's head to the second node.
  def remove_front
    @head = @head.next
  end
end