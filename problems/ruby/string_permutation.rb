require 'pry'

def permutations(word)
  binding.pry
  return word if word.empty?
  (0...word.length).each do |index|
    remaining_word = word.sub(word[index],'')
    binding.pry
    new_combination = permutations(remaining_word)
    binding.pry
    return word[index,index+1] + new_combination if new_combination == ''
    new_combination.split('').each do |combination_char|
      binding.pry
      return word[index,index+1] + combination_char
    end
  end
end

# # SWAP Logic
# def permutations(array, i = 0, result = [])
#   result << array.join('') if i == array.size

#   (i..array.size-1).each do |j|
#     array[i], array[j] = array[j], array[i]s
#     permutations(array, i+1, result)
#     array[i], array[j] = array[j], array[i]
#   end
#   result
# end

word = 'cat'
all_words = permutations(word)
puts all_words

# result = permutations(gets.chomp.split(''))
# puts result.uniq.length

# word.split('').permutation(word.length).to_a.count

# number_of_tiles = 10
# tile_words = ["cat", "tiger", "aab", "cbabca", "bbabab", "bbbba", "abab", "babc", "cbbaa", "bbaab"]
# output =      [6,     120,      3,      90,       15,       5,      6,      12,     30,       10]
