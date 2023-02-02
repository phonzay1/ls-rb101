# Write a method that takes a positive integer, n, as an argument, and displays a
# right triangle whose sides each have n stars. The hypotenuse of the triangle
# should have one end at the lower-left of the triangle, and the other end at the upper-right.

# Problem
# Input:
# - positive integer (n)
# Output:
# - print a right triangle whose sides each have n stars. The hypotenuse should
# have one end at the lower-left of the triangle, and the other end at the upper-right

# Examples/Test Cases
# - n == 0
# - n == 1
# - n == 2
# - n == 3
# - n == 5
# - n == 15
# - n == 80

# Data Structure/Algorithm
# Print a line with (n-1) blank spaces and 1 star at the end. Continue printing new lines each with
# (n-2), (n-3), etc blank spaces and 2, 3, etc stars at the end, until the final line
# where 0 blank spaces and n number of stars are printed.
# - Do it with a loop:
# - Initialize the variable counter = 1
# - Until counter > n
# 1) Print a line with (n-counter) blank spaces and counter number of stars
# 2) Increment counter by 1

# def triangle_corner_bottom_right(n)
#   counter = 1
#   until counter > n do
#     puts "#{(' ' * (n - counter)) + ('*' * counter)}"
#     counter += 1
#   end
# end

# triangle(0)
# triangle(1)
# triangle(2)
# triangle(3)
# triangle(5)
# triangle(15)
# triangle(80)

# Further Exploration - Upside Down Triangle
# Output example
#  ****
#   ***
#    **
#     *

# Data Structure/Algorithm
# Print a line with 0 blank spaces and n stars. Continue printing new lines each with
# 1, 2, 3 etc blank spaces and (n-1), (n-2), (n-3) etc stars at the end, until the final line
# where (n-1) blank spaces and 1 star are printed.
# - Do it with a loop:
# - Initialize the variable counter = 0
# - While counter < n
# 1) Print a line with counter number of blank spaces and (n-counter) number of stars
# 2) Increment counter by 1

# def triangle_corner_upper_right(n)
#   counter = 0
#   while counter < n do
#     puts "#{(' ' * counter) + ('*' * (n-counter))}"
#     counter += 1
#   end
# end

# Further Exploration - Triangle with the right angle at any corner of the grid
# Output example
# ****
# ***
# **
# *
#
# Data Structure/Algorithm
# Print a line with n-0 stars. Then print a line with n-1 stars, n-2 stars, etc
# until n total lines have been printed
# - Do it with a loop:
# - Initialize the variable counter = 0
# - While counter < n
# 1) Print a line with (n-counter) number of stars
# 2) Increment counter by 1

# def triangle_corner_upper_left(n)
#   counter = 0
#   while counter < n do
#     puts('*' * (n-counter))
#     counter += 1
#   end
# end

# triangle_corner_upper_left(3)
# triangle_corner_upper_left(5)

# Output example
# *
# **
# ***
# ****
#
# Data Structure/Algorithm
# Print a line with 1 star. Then print a line with 2, 3, etc stars until n total
# lines have been printed
# - Do it with a loop:
# - Initialize the variable counter = 1
# - Until counter > n
# 1) Print a line with counter number of stars
# 2) Increment counter by 1

# def triangle_corner_bottom_left(n)
#   counter = 1
#   until counter > n do
#     puts '*' * counter
#     counter += 1
#   end
# end

# triangle_corner_bottom_left(3)
# triangle_corner_bottom_left(5)

def triangle_corner_bottom_right(n)
  counter = 1
  until counter > n do
    puts "#{(' ' * (n - counter)) + ('*' * counter)}"
    counter += 1
  end
end

def triangle_corner_upper_right(n)
  counter = 0
  while counter < n do
    puts "#{(' ' * counter) + ('*' * (n-counter))}"
    counter += 1
  end
end

def triangle_corner_upper_left(n)
  counter = 0
  while counter < n do
    puts('*' * (n-counter))
    counter += 1
  end
end

def triangle_corner_bottom_left(n)
  counter = 1
  until counter > n do
    puts '*' * counter
    counter += 1
  end
end

def triangle(orientation, star_number=5)
  case orientation
    when 'upper right'
      triangle_corner_upper_right(star_number)
    when 'bottom right'
      triangle_corner_bottom_right(star_number)
    when 'upper left'
      triangle_corner_upper_left(star_number)
    when 'bottom left'
      triangle_corner_bottom_left(star_number)
  end
end

# triangle('UR')
# triangle('BR', 3)
# triangle('UL')
# triangle('BL', 3)
# triangle('choice')

puts "In which corner would you like to place the right angle?"
corner_choice = gets.chomp.downcase

puts "How many stars would you like each side of the triangle to have?"
stars = gets.chomp.to_i

triangle(corner_choice, stars)
