require 'pry'

# Find GCD.
def find_gcd(x, y)
  while y > 0
    x, y = y, x % y
    # y, x = y, x % y # Because it will not work for consecutive numbers.
  end
  return x
end

# arr = [2, 4, 6, 8, 10]
arr = [23, 24]
num1 = arr[0]
num2 = arr[1]
gcd = find_gcd(num1, num2)

arr.drop(2).each do |element|
  gcd = find_gcd(gcd, element)
end

puts "GCD: #{gcd}"
