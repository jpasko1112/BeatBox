class LinkedList
  attr_reader :head

  def initialize
  @head = nil
  end

  def append(data)
    if @head.nil?
      @head = Node.new(data)
    else
      current_node = @head
      new_node = Node.new(data)
      until current_node.next_node == nil
        current_node = current_node.next_node
      end
      current_node.next_node = new_node
    end
  end

  def count
    counter = 0
    current_node = @head
    until current_node == nil
      current_node = current_node.next_node
      counter += 1
    end
    counter
  end

  def to_string
    beats = []
    current_node = @head
    until current_node == nil
      beats << current_node.data
      current_node = current_node.next_node
    end
    beats.join(" ")
  end

  def prepend(data)
    oldhead = @head
    @head = Node.new(data)
    @head.next_node = oldhead
    data
  end
end