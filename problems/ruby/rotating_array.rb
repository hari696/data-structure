(0...gets.chomp.to_i).each do |_|
  size = gets.chomp.to_i
  elements = gets.chomp.split()
  rotate_upto = gets.chomp.to_i

  if rotate_upto <= size
    rotated_array = elements[rotate_upto..size] + elements[0..rotate_upto-1]
    puts rotated_array.join(' ')
  end
end

# Example:

# Input
# 1             ----- TestCases
# 5             ----- Length of the array
# 1 2 3 4 5     ----- Array Elements
# 2             ----- Elements to be rotated

# Output
# 3 4 5 1 2
