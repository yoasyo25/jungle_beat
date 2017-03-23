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
    #The output in the spec should be 3 instead of 6?
  end

  def play
    beats = @list.to_s
     `say -r 500 -v Boing "#{beats}"`
  end

end

beats = JungleBeat.new
beats.append("Is this real")
beats.play
