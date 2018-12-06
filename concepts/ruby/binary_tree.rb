require 'pry'
class Node
  attr_accessor :data, :left, :right

  def initialize(data)
    self.left = nil
    self.right = nil
    self.data = data
  end
end

def size(node)
  return 0 if node.nil?
  size(node.left) + 1 + size(node.right)
end

def height(node)
  return 0 if node.nil?

  left_height = height(node.left)
  right_height = height(node.right)

  if left_height > right_height
    left_height + 1
  else
    right_height + 1
  end
end

def max(node)
  return 0 if node.nil?

  max = node.data
  leftMax = max(node.left)
  rightMax = max(node.right)

  if leftMax > rightMax
    max = leftMax
  elsif rightMax > leftMax
    max = rightMax
  end
  max
end

def print_level_order(root)
  tree_height = height(root)
  (1..tree_height).each do |level|
    print_level(root, level)
  end
end

def print_level(root, level)
  return 0 if root.nil?

  if level == 1
    puts "Node: #{root.data}"
  elsif level > 1
    print_level(root.left, level - 1)
    print_level(root.right, level - 1)
  end
end

def print_level_order_queue(root)
  return 0 if root.nil?
  queue = []
  queue << root
  while length(queue) > 0
    node = queue.shift
    left_node = node.left
    right_node = node.right

    puts "Node: #{node.data}"

    queue << left_node unless left_node.nil?
    queue << right_node unless right_node.nil?
  end
end

def print_left_view_util(root, level, max_level)
  return 0 if root.nil?

  if max_level[0] < level
    print "Node: #{root.data}"
    max_level[0] = level
  end

  print_left_view_util(root.left, level + 1, max_level)
  print_left_view_util(root.right, level + 1, max_level)
end

def print_left_view(root)
  print_left_view_util(root, 1, [0])
end

root = Node.new(1)
root.left = Node.new(2);
root.right = Node.new(3);
root.left.left = Node.new(4);
root.left.right = Node.new(5);

# tree_size = size(root)
# puts "Tree Size: #{tree_size}"

# tree_max = max(root)
# puts "Tree Max: #{tree_max}"

# tree_height = height(root)
# puts "Height: #{tree_height}"

# print_level_order(root)
# print_level_order_queue(root)
# print_left_view(root)
