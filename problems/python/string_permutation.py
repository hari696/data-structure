import ipdb

def possible_words(word):
  # ipdb.set_trace()
  if not word:
    yield word
  else:
    for index in range(len(word)):
      remaining_word = word[:index] + word[index+1:]
      ipdb.set_trace()
      new_word = possible_words(remaining_word)
      ipdb.set_trace()
      for letter in new_word:
        ipdb.set_trace()
        yield word[index:index+1]+letter

total_words = list(set(possible_words("cat")))
print("total_words: ", total_words)

# test_cases = int(raw_input())
# if isinstance(test_casese, int) and test_cases > 0:
#   for test_case in range(0,test_cases):
#     word = raw_input()
#     if word != '' and word != None:
#       total_words = list(set(possible_words(word)))
#       # print(len(total_words))
#       print(total_words)

# ---------------------------------------------------------------------------------------------------------
# act, atc, cat, cta, tac, tca.
# ['tirge', 'tgier', 'igetr', 'tgeri', 'itger', 'regit', 'tgeir', 'trige', 'tiegr', 'tigre', 'tiger', 'gtier', 'igert', 'teigr', 'tierg', 'igter', 'etigr', 'rtige']

# ['tiger', 'itger', 'igter', 'igetr', 'igert',
# 'itger', 'tiger', 'tgier', 'tgeir', 'tgeri',
# 'gtier', 'tgier', 'tiger', 'tiegr', 'tierg',
# 'etigr', 'teigr', 'tiegr', 'tiger', 'tigre',
# 'rtige', 'trige', 'tirge', 'tigre', 'tiger',
# 'regit']


# ['tirge', 'iegtr', 'tgeri', 'ietrg', 'tergi', 'trgie', 'etirg', 'riget', 'giter', 'geitr', 'grtie', 'irget', 'tgeir', 'trige', 'tgire', 'igtre', 'getir', 'etgri', 'erigt', 'tgrei', 'iergt', 'tegri', 'igret', 'gerti', 'tgrie', 'egitr', 'tireg', 'regti', 'iretg', 'etgir', 'irteg', 'rgtei', 'rtgie', 'grite', 'trieg', 'iregt', 'tgier', 'egrit', 'igter', 'rgtie', 'gietr', 'gtire', 'etrgi', 'eitgr', 'gtrie', 'rgiet', 'tregi', 'egtri', 'getri', 'greit', 'reitg', 'rgeit', 'eirgt', 'gtier', 'regit', 'gteri', 'tigre', 'ietgr', 'eigtr', 'rtieg', 'ergti', 'itreg', 'retgi', 'egirt', 'teigr', 'etigr', 'irtge', 'eitrg', 'egtir', 'egrti', 'gerit', 'grtei', 'greti', 'igetr', 'iertg', 'itegr', 'treig', 'tiger', 'giert', 'ritge', 'rietg', 'etrig', 'rtegi', 'retig', 'girte', 'teirg', 'eigrt', 'rtige', 'rteig', 'griet', 'itrge', 'rgite', 'geirt', 'ergit', 'eirtg', 'irgte', 'rgeti', 'itgre', 'ertgi', 'eritg', 'rtgei', 'riegt', 'trgei', 'iegrt', 'terig', 'tierg', 'itger', 'gtrei', 'tegir', 'igert', 'rigte', 'gitre', 'riteg', 'iterg', 'ertig', 'gteir', 'tiegr', 'igrte', 'giret', 'reigt']



# number_of_tiles = 10
# tile_words = ["cat", "tiger", "aab", "cbabca", "bbabab", "bbbba", "abab", "babc", "cbbaa", "bbaab"]
# output =      [6,     120,      3,      90,       15,       5,      6,      12,     30,       10]


# Swap Solution.
def string_permutation(word_array, word_index = 0, result=[]):
  word_length = len(word_array)
  if word_index == word_length:
    result.append(word_array.join(''))

  for sub_word_index in range(word_index,word_length):
    word_array[word_index], word_array[sub_word_index] = word_array[sub_word_index], word_array[word_index]
    string_permutation(word_array, word_index + 1, result)
    word_array[word_index], word_array[sub_word_index] = word_array[sub_word_index], word_array[word_index]
  return result

test_cases = int(raw_input())
if isinstance(test_cases, int) and test_cases > 0:
  words = []
  for test_case in range(0,test_cases):
    words.append(raw_input())
  for word in words:
    combination_words = string_permutation(word.split(''), word_index = 0, result=[])
    print(len(list(set(combination_words))))
