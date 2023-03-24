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

  end

  def to_string

  end
end