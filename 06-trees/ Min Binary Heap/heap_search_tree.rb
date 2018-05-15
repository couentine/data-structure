require_relative 'node'

class MinBinaryHeap

  def initialize(root)
    @root = root
    @heap = []
  end

  def insert(root, node)
    @heap << root if @heap.length === 0
    @heap << node;
    length_of_heap = @heap.length
    heap_sort(length_of_heap)
    @root = @heap[0]
  end

  def find(data)
    position = 0
    @heap.each do |node|
      return position if data === node.title
      position += 1
    end
    return position = nil
  end

  def delete(data)
    delete_position = find(data)
    return -1 if delete_position.nil?
    if delete_position === @heap.length-1
      !@heap.pop
    else
      @heap[delete_position] = @heap.pop
      heapify(delete_position)
    end

  end

  def printf(children=nil)
    @heap.each do |node|
      puts "#{node.title}: #{node.rating}"
    end
  end

  def heap_sort(position)

    parent = (position)/2
    parent = 1 if parent === 0
    if @heap[position-1].rating < @heap[parent-1].rating
      temp = @heap[parent-1]
      @heap[parent-1] = @heap[position-1]
      @heap[position-1] = temp
      heap_sort(parent)
    end
  end

  def heapify(position)
    left,right = false
    heap_position = position + 1
    left_child = heap_position * 2
    right_child = heap_position * 2 + 1
    left = true if left_child <= @heap.length
    right = true if right_child <= @heap.length
    return if !right && !left
    if left && right
      if @heap[left_child-1].rating < @heap[right_child-1].rating
        swap_position = left_child-1
      else
        swap_position = right_child-1
      end
    elsif left && !right
      swap_position = left_child-1
    end
    if (@heap[position].rating > @heap[swap_position].rating)
      temp = @heap[position]
      @heap[position] = @heap[swap_position]
      @heap[swap_position] = temp
      heapify(swap_position)
    end
  end
end
