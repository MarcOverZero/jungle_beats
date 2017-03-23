require './lib/node'
class LinkedList
  attr_reader :head, :list, :count
  def initialize(head = nil)
    @head = head
    @count = 0
    #^^ move dynamic counter to append method?
  end

  def append(new_data)
    if @head == nil
      @head = Node.new(new_data)
    else
      marker = @head
      until marker.next_node.nil?
        marker = marker.next_node
      end
      marker.next_node = Node.new(new_data)
    end
    @count += 1
    head.data
  end

  def to_string
    marker = self.head
    string = self.head.data
    until marker.next_node.nil?
      marker = marker.next_node
      string << " " + marker.data
    end
    p string
  end

end
