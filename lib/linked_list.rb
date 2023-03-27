class LinkedList
  attr_accessor :head
  def initialize ()
    @head = nil
  end

  # method that adds a new node to the end
  # of the linked list
  # new nodes must be added after the head node
  def append(data)
    
    if @head == nil
      @head = Node.new(data)
    else
      current_node = @head
      while current_node.next_node != nil
        current_node = current_node.next_node
              require 'pry'; binding.pry
      end
      current_node.next_node = Node.new(data)
    end
    data
  end

  #   @head = Node.new(data)
  #   head.next_node = Node.new(data)
  #   data
  # end

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