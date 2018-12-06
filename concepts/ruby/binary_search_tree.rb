require 'pry'

class Node
  attr_accessor :data, :left, :right

  def initialize(data)
    self.left = nil
    self.right = nil
    self.data = data
  end
end

def inorder(root)
  if root != nil
    inorder(root.left)
    puts "Node: #{root.data}"
    inorder(root.right)
  end
end

def insert(node, data)
  return Node.new(data) if node.nil?

  if data < node.data
    node.left = insert(node.left, data)
  elsif data > node.data
    node.right = insert(node.right, data)
  end
  node
end

def min_value_node(node)
  current_node = node
  until current_node.left.nil?
    current_node = current_node.left
  end
  current_node
end

def delete_node(root, key)
  return 0 if root.nil?

  if key < root.data
    root.left = delete_node(root.left, key)
  elsif key > root.data
    root.right = delete_node(root.right, key)
  else
    if root.left.nil?
      temp = root.right
      root = nil
      return temp
    elsif root.right.nil?
      temp = root.left
      root = nil
      return temp
    end

    temp = min_value_node(root.right)
    root.data = temp.data
    root.right = delete_node(root.right, temp.data)
  end
  root
end

root = nil
root = insert(root, 50)
root = insert(root, 30)
root = insert(root, 20)
root = insert(root, 40)
root = insert(root, 70)
root = insert(root, 60)
root = insert(root, 80)

puts "Inorder traversal of the given tree"
inorder(root)

puts "\nDelete 20"
root = delete_node(root, 20)
puts "Inorder traversal of the modified tree"
inorder(root)

puts "\nDelete 30"
root = delete_node(root, 30)
puts "Inorder traversal of the modified tree"
inorder(root)

puts "\nDelete 50"
root = delete_node(root, 50)
puts "Inorder traversal of the modified tree"
inorder(root)
