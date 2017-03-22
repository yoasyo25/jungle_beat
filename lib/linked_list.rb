class LinkedList

  attr_accessor :head

  def initialize
    @head = nil
    @counter = 0
  end

  def append(data)
    @counter += 1
    if @head.nil?
      @head = Node.new(data)
    else
      @head.next_node = Node.new(data)
    end
    data
  end

  def count
    @counter
  end

  def to_string
    output = ""
    current = @head
    until current.nil?
      output << current.data + " "
      current = current.next_node
    end
    output.strip
  end

end
