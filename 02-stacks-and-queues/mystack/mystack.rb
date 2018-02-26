class MyStack
  attr_accessor :top

  def initialize
    @stack = Array.new
    self.top = nil
  end

  def push(item)
    @stack << item
    return @stack
  end

  def pop
    @stack.pop
    return @stack
  end

  def empty?
    if @stack.length == 0
      return true
    else
      return false
    end
  end
end
