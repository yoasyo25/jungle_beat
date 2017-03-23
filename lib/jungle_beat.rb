class JungleBeat

  attr_accessor :list

  def initialize
    @list = LinkedList.new
  end

  def append(data)
    formated_value = data.split

    formated_value.map do |value|
      @list.append(value)
    end
    formated_value.join(" ")
  end

  def count
    @list.count
  end

end

#The output in the spec should be 3 instead of 6?
