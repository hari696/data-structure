for _ in range(0, int(input())):
  length = int(input())
  elements = input().split()
  rotate_upto = int(input())

  if (rotate_upto <= length):
   print(' '.join(elements[rotate_upto:] + elements[:rotate_upto]))

# Example:

# Input
# 1             ----- TestCases
# 5             ----- Length of the array
# 1 2 3 4 5     ----- Array Elements
# 2             ----- Elements to be rotated

# Output
# 3 4 5 1 2
