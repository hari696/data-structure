require 'pry'

class Node
  attr_accessor :data, :next

  def initialize(data)
    self.data = data
    self.next = nil
  end
end

class LinkedList
  attr_accessor :head

  def initialize
    self.head = nil
  end

  # TC = 1
  def push(data)
    new_node = Node.new(data)
    new_node.next = self.head unless self.head.nil?
    self.head = new_node
  end

  # TC = 1
  def insert_after(previous_node, data)
    new_node = Node.new(data)
    new_node.next = previous_node.next
    previous_node.next = new_node
  end

  # TC = n
  def append(data)
    new_node = Node.new(data)

    if self.head.nil?
      self.head = new_node
    else
      current_node = self.head
      until current_node.nil?
        current_node = current_node.next
      end
      current_node.next = new_node
    end
  end

  def delete_node(data)
    temp = self.head

    if temp.data == data
      self.head = temp.next
    else
      temp = temp.next
      until temp.nil?
        break if temp.data == data
        previous_node = temp
        temp = temp.next
      end
      previous_node.next = temp.next unless previous_node.nil?
    end

    temp = nil
  end

  def delete_by_node_position(position)
    temp = self.head

    if position.zero?
      self.head = temp.next
    else
      until position == 1 && temp != nil
        temp = temp.next
        position -= 1
      end

      deleting_node = temp.next
      return if deleting_node.nil?

      next_node = deleting_node.next
      if next_node.nil?
        temp.next = nil
      else
        temp.next = next_node
      end
    end
  end

  def print_list
    current_node = self.head
    until current_node.nil?
      puts "Data: #{current_node.data}"
      current_node = current_node.next
    end
  end
end

# llist = LinkedList.new
# llist.head  = Node.new(1)
# second = Node.new(2)
# third  = Node.new(3)

# llist.head.next = second;
# second.next = third;

# llist.print_list

llist = LinkedList.new()
# llist.push(7)
# llist.push(1)
# llist.push(3)
# llist.push(2)
# puts "Linked List Created:"
# llist.print_list
# llist.delete_node(1)
# puts "Linked List Node(1) Deleted:"
# llist.print_list


# Driver program to test above function
llist.push(7)
llist.push(1)
llist.push(3)
llist.push(2)
llist.push(8)
puts 'Linked List Created:'
llist.print_list
llist.delete_by_node_position(4)
puts 'Delete LinkedList by position:'
llist.print_list
