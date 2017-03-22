require './lib/node'
class LinkedList
  attr_reader :head, :list, :count
  def initialize
    @head = nil
    @count = 0
    @string = ""
  end

  def append(new_data)
    marker = @head
    until marker.next_node.nil?
      marker = marker.next_node
    end
    marker.next_node = Node.new(new_data)
    @count += 1
    @string << new_data + " "
    # ^ cheater line traverse with nodes to concat data in the moment
    head.next_node.data
  end

  def to_string
    @string.strip
  end





end
