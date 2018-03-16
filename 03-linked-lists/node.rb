class Node
  attr_accessor :next
  attr_accessor :data

  def initialize(data)
    @date = data
    @next = nil
  end
end
