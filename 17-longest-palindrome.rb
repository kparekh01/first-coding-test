# Write a method that takes in a string of lowercase letters (no
# uppercase letters, no repeats). Consider the *substrings* of the
# string: consecutive sequences of letters contained inside the string.
# Find the longest such string of letters that is a palindrome.
#
# Note that the entire string may itself be a palindrome.
#
# You may want to use Array's `slice(start_index, length)` method,
# which returns a substring of length `length` starting at index
# `start_index`:
#
#     "abcd".slice(1, 2) == "bc"
#     "abcd".slice(1, 3) == "bcd"
#     "abcd".slice(2, 1) == "c"
#     "abcd".slice(2, 2) == "cd"
#
# Difficulty: hard.

def palindrome?(string)
  string == string.reverse ? true : false
end

def longest_palindrome(string)
  blank = []
  idx1 = 0
  while idx1 < string.length #first idx1 counter set
    length = 1
    while (idx1 + length) <= string.length #second length = 1 counter set
      substring = string.slice(idx1, length) #--------> Very important please see notes below !!!!!!!!!!!!!!!!!!!!
      blank << substring if palindrome?(substring) && substring.length >= 3 #if substring is a palindrome and it has 3 or more letters
      length += 1#start length counter first!                               #than send those substrings to the blank array!
    end
    idx1 += 1#start idx1 counter after length is done
  end
  return blank.max #return the longest substring in the array, will return at a minimum, a substring with a length of 3.
end
=begin
string.slice(idx1, length) gives you every possible string combination, the length +=1 gets executed first as it is inside the second
while loop, length will continue to count up until the (idx1 + length) <= string.length statement  then the idx counter will start it's count.
Please follow the illustration below. As an example we are using the string "abcbd"
idx1 -- length=1 -- combinations
0          1            "a"
0          2            "ab"
0          3            "abc"
0          4            "abcb"
0          5            "abcbd"
Now idx1 starts its count because length is done , these are the combinations for idx1 = 1 (notice how "a" gets pushed out!)
idx1 -- length=1 -- combinations
1          1            "b"
1          2            "bc"
1          3            "bcb"
1          4            "bcbd"
Now idx1  =  2 (notice the "b" gets pushed out!)
idx1 -- length=1 -- combinations
2          1            "c"
2          2            "cb"
2          3            "cbd"
Now idx1  =  3 (notice the "c" gets pushed out!)
idx1 -- length=1 -- combinations
3          1            "b"
3          2            "bd"
Now idx1  =  4 this is the final count as the statement idx1 < string.length(5 in this case) is last true with the number (4)
idx1 -- length=1 -- combinations
4          1            "d"     <----- means return the 1st letter after 4 spaces.
this is every combination of string that is stored in the variable substring, with that small line of code.
=end
# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(
  'longest_palindrome("abcbd") == "bcb": ' +
  (longest_palindrome('abcbd') == 'bcb').to_s
)
puts(
  'longest_palindrome("abba") == "abba": ' +
  (longest_palindrome('abba') == 'abba').to_s
)
puts(
  'longest_palindrome("abcbdeffe") == "effe": ' +
  (longest_palindrome('abcbdeffe') == 'effe').to_s
)
