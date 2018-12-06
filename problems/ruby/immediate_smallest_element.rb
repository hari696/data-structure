(0...gets.chomp.to_i).each do |_|
  size = gets.chomp
  arr = gets.chomp.split('').reject { |arr| arr == ' ' }.map(&:to_i)
  immediate_smallest_element = ""

  arr.each_with_index do |curr, index|
    next_value = arr[index + 1]

    if !next_value.nil? && curr > next_value
      immediate_smallest_element += " #{curr}"
    else
      immediate_smallest_element += " -1"
    end
  end
  puts immediate_smallest_element
end
