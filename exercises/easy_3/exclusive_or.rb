# Write a method named xor that takes two arguments, and returns true if exactly
# one of its arguments is truthy, false otherwise. Note that we are looking for a
# boolean result instead of a truthy/falsy value as returned by || and &&.

def xor?(arg1, arg2)
  if arg1 && !arg2 || !arg1 && arg2
    true
  else
    false
  end
end

puts xor?(5.even?, 4.even?)
puts xor?(5.odd?, 4.odd?)
puts xor?(5.odd?, 4.even?)
puts xor?(5.even?, 4.odd?)

# FURTHER EXPLORATION
# Useful situations for xor method:
# - There are 2 options for pizza toppings (or whatever) in an online ordering system,
# and you want customers to choose at least one but not both
# - Voting system with 2 candidates, choose at least one but not both
# - There are 2 rooms next to each other available for rental, but it's prohibitive
# for catering for both rooms to be rented at the same time. Allow a group to rent one
# but not both rooms at any one time
# - 2 field trip programs available at the same time slot, but they use the same space. Allow
# a group to reserve one but not both trips at any one time

# Does the xor method perform short-circuit evaluation of its operands? Why or why
# not? Does short-circuit evaluation in xor operations even make sense?

# Yes, if you look at the example !!((value1 && !value2) || (value2 && !value1)),
# if the first part (value1 && !value2) evaluates to true then the expression can return
# true without evaluating the second part. If the first part evaluates false, then
# the second part must still be evaluated
