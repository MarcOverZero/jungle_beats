require './lib/node'
class LinkedList
  attr_reader :head
  def initialize(head = nil)
    @head = head
  end

  def count
    count = 1
    if @head == nil
      0
    else
      marker = @head
      until marker.next_node.nil?
        count += 1
        marker = marker.next_node
      end
      count
    end
  end

  def append(new_data)
    count = 0
    if @head == nil
      @head = Node.new(new_data)
    else
      marker = @head
      until marker.next_node.nil?
        marker = marker.next_node
      end
      marker.next_node = Node.new(new_data)
    end
    count += 1
    head.data
  end

  def to_string
    marker = self.head
    string = self.head.data
    until marker.next_node.nil?
      marker = marker.next_node
      string << " " + marker.data
    end
    string
  end

  def prepend(data)
    if @head.nil?
      @head = Node.new(data)
    else
      current = @head
      @head = Node.new(data)
      @head.next_node = current
    end
    head.data
  end

  def insert(index, data)
    counter = 0
    marker = @head
    #if head.nil? prepend??
    if index == 0
      prepend(data)
    else
      while counter < (index -1)
        marker = marker.next_node
        counter += 1
      end
      marker = Node.new(data,marker.next_node.next_node)
    end
    head.data
  end

# vv if time allows break out more for readability vv
  def find(position, elements_to_return)
    string = self.to_string
    individuals = string.split
    individuals[(position-1)..(position + elements_to_return -2)].join(" ")
  end

  def includes?(word)
    string = self.to_string
    individuals = string.split
    individuals.include?(word)
  end

  def pop
   marker = @head
   if @head.nil?
     puts "You have no nodes to pop!"
   elsif @head.next_node == nil
     popped_node = @head.data
     @head = nil
   else
     until marker.next_node.next_node == nil
       marker = marker.next_node
     end
      popped = marker.next_node.data
      marker.next_node = nil
      popped
    end
  end
end
