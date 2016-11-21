# Define a recursive function that finds the factorial of a number.
def factorial(n)
  return 1 if n == 0

  n * factorial(n - 1)
end

puts
puts "Factorial Test Cases"
p factorial(0) == 1
p factorial(1) == 1
p factorial(3) == 6
p factorial(5) == 120

# Define a recursive function that returns true if a string is a
# palindrome and false otherwise.
def palindrome(string)
  return true if string.length <= 1

  if string[0] == string[-1]
    palindrome(string[1..-2])
  else
    false
  end
end

puts
puts "Palindrom Test Cases"
p palindrome("hello") == false
p palindrome("madam") == true
p palindrome('abcdefghihgfedcba') == true

# Define a recursive function that takes an argument n and prints "n
# bottles of beer on the wall", "(n-1) bottles of beer on the wall",
# ..., "no more bottles of beer on the wall".
def bottles(n)
  if n.zero?
    puts "no more bottles of beer on the wall"
    return
  end

  puts "#{n} bottles of beer on the wall"

  bottles(n - 1)
end

puts
puts "Bottles Test Cases"
bottles(5)

# Define a recursive function that takes an argument n and returns the
# fibonacci value of that position. The fibonacci sequence is 0, 1, 1, 2,
# 3, 5, 8, 13, 21... So fib(5) should return 5 and fib(6) should return 8.
def fib(n)
  return 0 if n <= 0
  return 1 if n == 1

  fib(n - 1) + fib(n - 2)
end

puts
puts "Fibonacci Test Cases"
p fib(5) == 5
p fib(6) == 8
p fib(8) == 21

# Define a recursive function that flattens an array. The method should
# convert [[1, 2], [3, 4]] to [1, 2, 3, 4] and [[1, [8, 9]], [3, 4]] to
# [1, 8, 9, 3, 4].
def flatten(array)
  return [] if array.empty?

  res = []
  array.each do |el|
    if el.is_a? Array
      res += flatten(el)
    else
      res << el
    end
  end
  res
end

puts
puts "Flatten Test Cases"
p flatten([[1, 2], [3, 4]]) == [1, 2, 3, 4]
p flatten([[1, [8, 9]], [3, 4]]) == [1, 8, 9, 3, 4]
p flatten([[[],1,[],4,[4,3]],4]) == [1, 4, 4, 3, 4]

# Use the roman_mapping hash to define a recursive method that converts
# an integer to a Roman numeral.

NUM_TO_ROMAN = {
  1000 => "M",  900 => "CM", 500 => "D",  400 => "CD", 100 => "C",
  90   => "XC", 50  => "L",  40  => "XL", 10  => "X",  9   => "IX",
  5    => "V",  4   => "IV", 1   => "I"
}
def convert_to_roman(num)
  return "I" if num == 1
  res = ''
  NUM_TO_ROMAN.each do |int, roman|
    if num / int >= 1
      res << roman * (num / int)
      num = num % int
      convert_to_roman(num)
    end
  end
  res
end

puts
puts "Convert Integer to Roman Test Cases"
p convert_to_roman(1000) == "M"
p convert_to_roman(150)  == "CL"
p convert_to_roman(138)  == "CXXXVIII"
p convert_to_roman(4782) == "MMMMDCCLXXXII"


# Use the roman_mapping hash to define a recursive method that converts
# a Roman numeral to an integer.

ROMAN_TO_NUM = {
  "M" => 1000, "CM" => 900, "D" => 500, "CD" => 400, "C" => 100,
  "XC" => 90, "L" => 50, "XL" => 40, "X" => 10, "IX" => 9,
  "V" => 5, "IV" => 4, "I" => 1
}

def convert_to_num(roman)
  return 0 if roman == ''

  ROMAN_TO_NUM[roman[0]] + convert_to_num(roman[1..-1])
end

puts
puts "Convert Roman to Integer Test Cases"
p convert_to_num("M") == 1000
p convert_to_num("CL") == 150
p convert_to_num("CXXXVIII") == 138
p convert_to_num("MMMMDCCLXXXII") == 4782
