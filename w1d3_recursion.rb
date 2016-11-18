# Exercise 1 - sum_to
#
# Write a function sum_to(n) that uses recursion to calculate the sum
# from 1 to n (inclusive of n).

def sum_to(n)
  return nil if n < 0
  return n if n <= 1
  n + sum_to(n - 1)
end

 # Test Cases
p sum_to(5) == 15
p sum_to(1) == 1
p sum_to(9) == 45
p sum_to(-8) == nil

# Exercise 2 - add_numbers
#
# Write a function add_numbers(nums_array) that takes in an array of
# Fixnums and the sum of those numbers. Write this method
# recursively.

def add_numbers(arr = nil)
  return nil if arr.nil?
  return 0 if arr.empty?
  arr.first + add_numbers(arr[1..-1])
end

# Test Cases
p add_numbers([1, 2, 3, 4]) == 10
p add_numbers([3]) == 3
p add_numbers([-80, 34, 7]) == -39
p add_numbers() == nil


# Exercise 3 - Gamma Function
#
# Let's write a method that will solve Gamma Function recursively. The
# Gamma Function is defined Γ(n) = (n-1)!.

def gamma_fnc(n)
  return nil if n < 1
  return 1 if n == 1
  (n - 1) * gamma_fnc(n - 1)
end

# Test Cases
p gamma_fnc(0) == nil
p gamma_fnc(1) == 1
p gamma_fnc(4) == 6
p gamma_fnc(8) == 5040
