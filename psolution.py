import ipdb
# ipdb.set_trace()

def immediate_smallest_element(n, arr):
  immediate_smallest_element = ""
  length = len(arr) - 1

  for index, curr_value in enumerate(arr):
    if index < length:
      next_value = arr[index + 1]

    if next_value != None and curr_value > next_value:
      immediate_smallest_element += " " + str(next_value)
    else:
      immediate_smallest_element += " -1"

  print(immediate_smallest_element)

def get_input_arrarys(test_cases):
  sizes = []
  all_arr =[]

  while (test_cases > 0):
    sizes.append(int(input()))
    all_arr.append(str(input()).split(' '))
    test_cases -= 1

  for index, arr in enumerate(all_arr):
    immediate_smallest_element(sizes[index], arr)

test_cases = int(input())
get_input_arrarys(test_cases)

# 42
# 468 335 501 170 725 479 359 963 465 706 146 282 828 962 492 996 943 828 437 392 605 903 154 293 383 422 717 719 896 448 727 772 539 870 913 668 300 36 895 704 812 323

# -----------------------------------------------------------------------------------------------

for _ in range(int(input())):
    z = int(input())
    _list = list(map(int,input().split()))
    res = []
    for i in range(z):
        if i<z-1:
            if _list[i] > _list[i+1]:
                res.append(_list[i+1])
            else:
                res.append(-1)
        else:
            res.append(-1)
    print(str(" ".join(map(str, res))))
