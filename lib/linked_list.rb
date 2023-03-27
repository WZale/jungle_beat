class LinkedList
  attr_accessor :head
  def initialize ()
    @head = nil
  end

  def append(data)
    if @head == nil
      @head = Node.new(data)
    else
      current_node = @head
      while current_node.next_node != nil
        current_node = current_node.next_node
      end
      current_node.next_node = Node.new(data)
    end
    data
  end

  # Append method adds nodes to a linked list.

  # Begins with if conditional stating that if
  # @head is equal to nil (i.e. no nodes in the list)
  # then the parameter passed in will become the 
  # head node, Node.new(data)

  # Else, if head is not equal to nil, current_node
  # is declared to be @head.
  # While loop then executes, stating that while
  # the node following current node is not equal to
  # nil, (meaning that there is still another node after) 
  # then current node is equal to current_node.next_node
  # While loop ends, and current_node.next_node is then 
  # declared to be a new node.

  # The method ends by returning data, the parameter input from
  # the user.

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

# Count method counts nodes in a linked list.

# Count method declares a variable named
# counter with an initial value of zero.
# Also creates a variable named current_node
# that is set to @head, the head of the linked list.

# While loop executes while the current node is
# not equal to nil (i.e. while there is actually
# a node present)

# Inside the while loop, counter increments by one
# current_node is also re-declared to be
# current_node.next_node, which serves to traverse
# the linked list

# the loop ends, and counter is returned as the 
# last line of the method


# walk through the logic of a loop after 
# writing it to make sure that it works for 
# more than one node