# What will be printed by each of these code groups?

def mess_with_vars(one, two, three)
  one = two
  two = three
  three = one
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}"
puts "two is: #{two}"
puts "three is: #{three}"

# This will print the strings "one is: one" on one line, "two is: two" on the next line,
# and then "three is: three" on a new line. The values referenced by the local variables
# `one`, `two`, and `three` are passed to the `mess_with_vars` method when it's invoked
# on line 13. We can see within the `mess_with_vars` method definition on lines 3-7
# that the method accepts three parameters: `one`, `two`, and `three`, and that the
# values assigned to these parameters are reassigned within the method definition.
# However, reassignment is not destructive, therefore the main scope local variables `one`, `two`,
# and `three` retain their original object assignments, and are unmodified by the
# method call.

def mess_with_vars(one, two, three)
  one = "two"
  two = "three"
  three = "one"
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}"
puts "two is: #{two}"
puts "three is: #{three}"

# This will have the same output as the code example above, for the same reason:
# reassignment is not destructive, and local variables initialized outside of a method
# cannot be reassigned inside of a method definition.

def mess_with_vars(one, two, three)
  one.gsub!("one","two")
  two.gsub!("two","three")
  three.gsub!("three","one")
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}"
puts "two is: #{two}"
puts "three is: #{three}"

# This will output the following strings, all on separate lines: "one is: two",
# "two is: three", and "three is: one". This time the method definition for `mess_with_vars`
# invokes mutating methods on its arguments. When the values referenced by
# the main scope local variables `one`, `two`, and `three` are passed to the `mess_with_vars`
# method, they have the `gsub!` method invoked on them, which is mutating and modifies
# the original objects passed to the method as arguments.