# A line of people at an amusement park ride
# There is a front to the line, as well as a back.
# People may leave the line whenever they see fit and those behind them take their place.

class Line
  attr_accessor :members

  def initialize
    self.members = []
  end

  def join(person)
    self.members << person
    return members
  end

  def leave(person)
    self.members.delete(person)
    return members
  end

  def front
    return self.members.first
  end

  def middle
    middle = (self.members.length/2).floor
    return self.members[middle]
  end

  def back
    return self.members.last
  end

  def search(person)
    self.members.include?(person) ? person : nil;
  end

  private

  def index(person)
    @personn = person.all
  end
end
