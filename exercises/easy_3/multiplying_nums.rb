# Create a method that takes two arguments, multiplies them together, and returns
# the result

def multiply(num1, num2)
  num1 * num2
end

def square(num)
  multiply(num, num)
end

# puts square(1)
# puts square(2)
# puts square(3)
# puts square(4)
# puts square(12)

# puts multiply(3, 5) == 15
# puts multiply(10, 4) == 40
# puts multiply(12, 12) == 144
# puts multiply(38, 67) == 2546
# p multiply([1, 2, 3, 4, 5], 2)
# p multiply([1, 2, 3, 4, 5], 7)

# FURTHER EXPLORATION
# What if we wanted to generalize this method to a "power to the n" type method:
# cubed, to the 4th power, to the 5th, etc. How would we go about doing so while
# still using the multiply method?

def calc_exponent(num, exponent)
  num_exp = 1

  exponent.times do |_|
  num_exp = multiply(num_exp, num)
  end
  num_exp
end

puts calc_exponent(2, 1)
puts calc_exponent(2, 2)
puts calc_exponent(2, 3)
puts calc_exponent(2, 4)
puts calc_exponent(2, 5)
puts calc_exponent(2, 6)
puts calc_exponent(2, 7)
puts calc_exponent(5, 3)