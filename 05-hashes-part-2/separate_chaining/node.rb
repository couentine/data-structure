class Node
  attr_accessor :next
  attr_accessor :key
  attr_accessor :value

  def initialize(key, value)
      self.key = key
      self.value = value
      self.next = nil
  end
end
