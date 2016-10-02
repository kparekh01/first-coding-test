# Write a method that will take a string as input, and return a new
# string with the same letters in reverse order.
#
# Don't use String's reverse method; that would be too simple.
#
# Difficulty: easy.

def reverse(string)
    result = ""
    i = 0
    while i < string.length
      result = string[i] + result
      i += 1
    end
    result
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.
puts reverse("this method works on multiple words") #find out how to return the words reversed but in their original order!!!
puts "**********************************************************"
puts(
    'reverse("abc") == "cba": ' + (reverse("abc") == "cba").to_s
)
puts(
    'reverse("a") == "a": ' + (reverse("a") == "a").to_s
)
puts(
    'reverse("") == "": ' + (reverse("") == "").to_s
)