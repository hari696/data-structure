# Find GCD.
def find_gcd(x, y):
  while y > 0:
    x, y = y, x % y
    # y, x = y, x % y # Because it will not work for consecutive numbers.
  return x


arr = [2, 4, 6, 8, 10]
# arr = [23, 24]
# arr = [12, 12, 12, 12, 12, 12]

num1 = arr[0]
num2 = arr[1]
gcd = find_gcd(num1, num2)
for element in range(2, len(arr)):
  gcd = find_gcd(gcd,arr[element])

print "GCD: ", gcd
