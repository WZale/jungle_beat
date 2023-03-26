class LinkedList
  attr_accessor :head
  def initialize ()
    @head = nil
  end

  def append(data)
    @head = Node.new(data)
    data
  end

  def count
    if self.head.next_node == nil
      1
    else
      0
    end
  end

  def to_string
    self.head.data
  end
end

# def pseudo_count  
  # count needs to return the number 
  # of nodes currently in the linked list


  # need a variable to keep track of count
  
  # increment variable for each node
  

    # create method to count through linked
    # list from head to tail, incrementing
    # counter by one until a value of nil
    # is returned 

    
      # start with @head and go to tail
        # when the node returns a value of
        # nil, I will know I'm at the tail
        

      # until tail
# end