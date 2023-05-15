class BeatBox
  attr_reader :list

  def initialize
    @list = LinkedList.new  
  end

  def append(data)
    beats = data.split
    beats.each do |beat|
      list.append(beat)
    end
  end

  def count
    list.count
  end

  def play
    beats = @list.to_string
    `say -r 175 #{beats}`
  end
end
