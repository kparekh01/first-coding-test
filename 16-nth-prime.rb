# Write a method that returns the `n`th prime number. Recall that only
# numbers greater than 1 can be prime.
#
# Difficulty: medium.

# You may use our `is_prime?` solution.
def is_prime?(number)
  i = 0
  while i < number && number > 1
    if number > 3 && (number % 2 == 0 || number % 3 == 0)
      return  false
    else
      return  true
    end
    i += 1
  end
end

def nth_prime(n)
  prime_num = 0
  i = 2
  while true
    if is_prime?(i)
      prime_num += 1
      if prime_num == n # if prime_num == n , that will give you the nth prime number
        return i #by returning i
      end
    end
    i += 1
  end
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts('nth_prime(1) == 2: ' + (nth_prime(1) == 2).to_s)
puts('nth_prime(2) == 3: ' + (nth_prime(2) == 3).to_s)
puts('nth_prime(3) == 5: ' + (nth_prime(3) == 5).to_s)
puts('nth_prime(4) == 7: ' + (nth_prime(4) == 7).to_s)
puts('nth_prime(5) == 11: ' + (nth_prime(5) == 11).to_s)
