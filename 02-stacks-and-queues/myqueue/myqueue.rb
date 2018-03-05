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
    temp = @queue.first
    @queue.delete_at(0)
    @head = @queue.first
    return temp
  end

  def empty?
    if @head == nil
          true
        else
    false
  end
end
