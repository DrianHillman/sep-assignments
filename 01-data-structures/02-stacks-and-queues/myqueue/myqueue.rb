class MyQueue
  attr_accessor :head
  attr_accessor :tail

  def initialize
    @queue = []
    @head = @queue[-1]
    @tail = @queue[0]
  end

  def enqueue(element)
    @queue.insert(@queue.length, element)
    @head = @queue[-1]
    @tail = @queue[0]
  end

  def dequeue
    temp = @head
    @queue.delete_at(0)
    @head = @queue[-1]
    @tail = @queue[0]
    return temp
  end

  def empty?
    @queue[0] === nil
  end
end