class LinkedList
  attr_accessor :head
  def initialize ()
    @head = nil
  end

  def append(data)
    @head = Node.new(data)
    data
  end

  def to_string
    self.head.data
  end

  def count
    counter = 0
    current_node = @head
    while current_node != nil
      counter += 1
      current_node = current_node.next_node
    end
    counter
  end
end

# walk through the logic of a loop after 
# writing it to make sure that it works for 
# more than one node