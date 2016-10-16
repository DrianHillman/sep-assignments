class MyStack
  attr_accessor :top

  def initialize
    @stack = []
    self.top = nil
  end

  def push(item)
    @stack.insert(@stack.length,item)
    self.top = @stack[-1]
  end

  def pop
    temp = @stack[-1]
    @stack.delete_at(-1)
    self.top = @stack[-1]
    return temp
  end

  def empty?
    @stack[0] === nil
  end
end