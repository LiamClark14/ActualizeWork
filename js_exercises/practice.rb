# Exercise: (work in pairs)
# Solve the following problems first in Ruby, then convert the solution to JavaScript.
# 1. Write a function that takes in an array of numbers and returns its sum.
# 2. Write a function that takes in an array of strings and returns the smallest string.

# def smallest_string(array)
#   smallest = array[0]
#   array.each do |string|
#     if string.length < smallest.length
#       smallest = string
#     end
#   end
#   smallest
# end

# p smallest_string(["cat", "blizzard", "hotdog"])

# 3. Write a function that takes in an array of numbers and returns a new array with the numbers in reverse order.
# 4. Write a function that takes in an array of words and returns the number of words that begin with the letter “a”.

# def starts_with_A(array)
#   count = 0
#   array.each do |word|
#     if word.downcase.start_with?("a")
#       count += 1
#     end
#   end
#   count
# end

# p starts_with_A(["Apple", "app", "Aardvark", "bat"])

# 5. Write a function that takes in an array of strings and joins them together to make a single string separated by commas.
# 6. Write a function that takes in an array of numbers and returns the product of all the numbers (each number multiplied by each other).
def product(array)
  product = 1
  array.each do |multiplier|
    product *= multiplier
  end
  product
end

p product([1, 2, 3, 4])
# 7. Write a function that takes in an array of numbers and returns the two smallest numbers.
# 8. Write a function that takes in an array of numbers and returns a count of how many zeros are in the array.
# 9. Write a function that takes in an array of numbers and returns true if all the numbers are bigger than 10, otherwise returns false.
# 10. Write a function that takes in an array of words and returns the number of times the letter “a” appeared in total.
# BONUS PROBLEMS
# Write a function that accepts a string and returns whether it’s a palindrome.

# Write a function to generate/print/store the first "n" prime numbers.
# Given a tic-tac-toe board (matrix of 3 x 3), write a function that can check to see whether X or O won.
# DOUBLE BONUS:
# Use the Ruby .map/.select/.reduce shortcuts to rewrite some of the Ruby problems!
# Use the JavaScript .map/.filter/.reduce shortcuts to rewrite some of the JavaScript problems!
