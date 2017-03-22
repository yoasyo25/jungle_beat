class LinkedList

  attr_accessor :head

  def initialize
    @head = nil
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

  def append(data)
    if @head.nil?
      @head = Node.new(data)
    else
      current = @head
      until current.next_node.nil?
        current = current.next_node
      end
      current.next_node = Node.new(data)
    end
    data
  end

  def pop
    return nil if @head.nil?
    if @head.next_node
      previous = @head #points to current node
      current  = @head.next_node #points to the next_node after current
      until current.next_node.nil?
        previous = current
        current  = current.next_node
      end
      previous.next_node = nil
      current.data
    else
      current = @head # if head is the only thing that has a data
      @head   = nil #then return nil and the data from head
      current.data # by setting head to nil we are poping it and returning the value of head
    end
  end

  def includes?(data)
    current = @head
    until current.next_node.nil?
      return true if current.data == data
        current = current.next_node
    end
    return false
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

  def prepend(data)
    if @head.nil?
      @head = Node.new(data)
    else
      #if list is not empty we want to make the new node into a head
      #and have the next_node of the tail set to the new node
      current = @head
      new_node = Node.new(data)
      @head = new_node
      @head.next_node = current
    end
    data
  end

  def find(start, amount)
    current = @head
    output = []

    start.times do
      current = current.next_node
    end

    output << current.data

    (amount - 1).times do
      current = current.next_node
      output << current.data
    end

    output.join(" ")
  end



  def insert(where, what)
    current = @head

    (where - 1).times do
      current = current.next_node
    end

    previous_node = current.next_node
    new_node = Node.new(what)
    current.next_node = new_node
    new_node.next_node = previous_node
  end



end
