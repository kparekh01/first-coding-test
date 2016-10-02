# Write a method that takes in a string and returns the number of
# letters that appear more than once in the string. You may assume
# the string contains only lowercase letters. Count the number of
# letters that repeat, not the number of times they repeat in the
# string.
#
# Difficulty: hard.

def num_repeats(string)
  hash_count = Hash.new(0) #creates a new hash
  letter_appears = 0 #counter for letters
  string.split("").each{|letter| hash_count[letter] += 1}#(each letter => how many times it appears), send to hash_count as pairs!
  hash_count.each{|key, value| letter_appears += 1 if value > 1}#letter_appears +=1 each time if letter from hash has a count > 1.
  return letter_appears #returns how many letters appear more then once in any string provided.
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts('num_repeats("abdbc") == 1: ' + (num_repeats('abdbc') == 1).to_s)
# one character is repeated
puts('num_repeats("aaa") == 1: ' + (num_repeats('aaa') == 1).to_s)
puts('num_repeats("abab") == 2: ' + (num_repeats('abab') == 2).to_s)
puts('num_repeats("cadac") == 2: ' + (num_repeats('cadac') == 2).to_s)
puts('num_repeats("abcde") == 0: ' + (num_repeats('abcde') == 0).to_s)
