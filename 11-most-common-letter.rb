# Write a method that takes in a string. Your method should return the
# most common letter in the array, and a count of how many times it
# appears.
#
# Difficulty: medium.

def most_common_letter(string)
  most_common_letter = nil
  most_common_letter_count = 0
  idx1 = 0
  while idx1 < string.length
    letter = string[idx1]
    count = 0
    idx2 = 0
    while idx2 < string.length
      if letter == string[idx2]
        count += 1
      end
      idx2 += 1
    end
    if ( count > most_common_letter_count ) || (most_common_letter_count == 0)
      most_common_letter_count = count
      most_common_letter = letter
    end
    idx1 += 1
  end
   [most_common_letter, most_common_letter_count]
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(
  'most_common_letter("abca") == ["a", 2]: ' +
  (most_common_letter('abca') == ['a', 2]).to_s
)
puts(
  'most_common_letter("abbab") == ["b", 3]: ' +
  (most_common_letter('abbab') == ['b', 3]).to_s
)
