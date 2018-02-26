class MyQueue
  attr_accessor :head
  attr_accessor :tail

  def initialize
    @queue = Array.new
    @head = @queue[0]
  end

  def enqueue(element)
    @queue << element
    return @queue
  end

  def dequeue
    @queue.shift
    return @queue
  end

  def empty?
    if @queue.length == 0
      return true
    else
      return false
    end
  end
end
