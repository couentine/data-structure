require_relative 'hash_item'

class HashClass

  def initialize(size)
    @items = Array.new(size)
  end

  def []=(key, value)
    new_value = HashItem.new(key, value)
    i = index(key, size)

    if @items[i] === nil
      @items[i] = new_value
    elsif @items[i].key != key
      self.resize
      self[key] = value
    elsif (@items[i].key === key) && (@items[i].value != value)
      self.resize
      @items[i] = value
    end
  end


  def [](key)
    if @items[index(key,size)] != nil && @items[index(key,size)].key == key
      @items[index(key,size)].value
    end
  end

  def resize
  arrayb = @items
    @items = Array.new(arrayb.length * 2)

    arrayb.each do |item|
      unless item === nil
        self[item.key] = item.value
      end
    end
  end

  def index(key, size)
    result = 0
    key.each_byte do |letter|
    result += letter
  end
  result % size
  end

  def size
    @items.length
  end

end
