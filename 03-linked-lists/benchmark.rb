require 'rspec'
require 'benchmark'
require_relative 'linked_list'


result = Benchmark.measure {
  testArray = Array.new
  10000.times do |x|
    testArray[x] = x
  end
}

result1 = Benchmark.measure {
   llist = LinkedList.new
   10000.times do |x|
     llist.add_to_tail(Node.new(x))
   end
}


llist = LinkedList.new
 10000.times do |x|
   llist.add_to_tail(Node.new(x))
 end

 result_find_node = Benchmark.measure {
   node = llist.head
   5000.times do |x|
     node = node.next
   end
}

testArray = Array.new
10000.times do |x|
  testArray[x] = x
end

delete_5000_array = Benchmark.measure {
  testArray.slice!(5000,1)
}

llist = LinkedList.new
remove_node = Node.new
10000.times do |x|
  if x === 5000
    remove_node = Node.new(x)
    puts "5000"
    llist.add_to_tail(remove_node)
  else
    llist.add_to_tail(Node.new(x))
  end
end

result_delete_node = Benchmark.measure {
  llist.delete(remove_node)
}
