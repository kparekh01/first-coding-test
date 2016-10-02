# Write a method that takes in an integer `offset` and a string.
# Produce a new string, where each letter is shifted by `offset`. You
# may assume that the string contains only lowercase letters and
# spaces.
#
# When shifting "z" by three letters, wrap around to the front of the
# alphabet to produce the letter "c".
#
# You'll want to use String's `ord` method and Integer's `chr` method.
# `ord` converts a letter to an ASCII number code. `chr` converts an
# ASCII number code to a letter.
#
# You may look at the ASCII printable characters chart:
#
#     http://en.wikipedia.org/wiki/ASCII#ASCII_printable_characters
#
# Notice that the letter 'a' has code 97, 'b' has code 98, etc., up to
# 'z' having code 122.
#
# You may also want to use the `%` modulo operation to handle wrapping
# of "z" to the front of the alphabet.
#
# Difficulty: hard. Because this problem relies on outside
# information, we would not give it to you on the timed challenge. :-)

def caesar_cipher(shift, string)
    alphabet = ("a".."z").to_a
    blank = string.each_char.map do |letter| alphabet.include?(letter) ? alphabet[(alphabet.index(letter) + shift) % alphabet.length] : letter
    end
    return blank.join #must use return not puts, otherwise tests will not pass! Also no (" ") needed because mapping adds a " "
                      #in between every letter and a "nil" + " " in between every word, and join deletes the spaces in between the letters
                      #and deletes the nil in between words, leaving one space in between words.
end
#Following the logic of blank....
#step 1 -> string.each_char.map will split the string and help you iterate over each "letter"
#step2 -> inside the code block, if each "letter" is a letter in the alphabet(and not an empty space) is true
#step3 -> alphabet[(alphabet.index(letter) + shift) % alphabet.length] - take the index of that letter in the alphabet array
#and it to shift, which is the number of units it's being moved, and THEN % alphabet.length(by using modulo you will get a remainder
#that will help you restart if a letter is at the end of the alphabet and should be in front after the shift ex: "z" shift 3 == "c")
#looking at that breakdown if the letter in this case is "x" and we wanted to shift 3---
#alphabet[(alphabet.index("x") + 3) % alphabet.length] == alphabet[(23 + 3) % 26] == alphabet[26 % 26] == alphabet[0] == "a"
# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(
  'caesar_cipher(3, "abc") == "def": ' +
  (caesar_cipher(3, 'abc') == 'def').to_s
)
puts(
  'caesar_cipher(3, "abc xyz") == "def abc": ' +
  (caesar_cipher(3, 'abc xyz') == 'def abc').to_s
)
