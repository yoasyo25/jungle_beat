class LinkedList

  attr_accessor :head

  def initialize
    @head = nil
  end

  def append(data)
    if @head.nil?
      @head = @tail = Node.new(data)
    else
      current = @head
      until current.next_node.nil?
        current = current.next_node
      end
      current.next_node = Node.new(data)
    end
    data
  end

  def count
    counter = 0
    current = @head
    until current == nil
      counter += 1
      current = current.next_node
    end
    counter
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
