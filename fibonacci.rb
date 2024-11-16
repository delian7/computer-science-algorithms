# frozen_string_literal: true

# calculating the Fibonacci number using recursion
# This method returns the nth Fibonacci number, where the sequence starts with
# 0 and 1. For n < 2, it returns n directly. For n >= 2, it recursively
# calculates the sum of the two preceding Fibonacci numbers.
def fibonacci(number)
  if number < 2
    number
  else
    fibonacci(number - 1) + fibonacci(number - 2)
  end
end

puts fibonacci(0)  # Expected output: 0
puts fibonacci(1)  # Expected output: 1
puts fibonacci(2)  # Expected output: 1
puts fibonacci(5)  # Expected output: 5
puts fibonacci(10) # Expected output: 55
