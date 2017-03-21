class LinkedList

  attr_accessor :head

  def initialize
    @head = nil
    @counter = 0
  end

  def append(data)
    @counter += 1
    @head = Node.new(data)
    data
  end

  def count
    @counter
  end

  def to_string
    @head.data
  end

end
