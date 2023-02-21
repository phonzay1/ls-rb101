# What do you expect to happen when the greeting variable is referenced in the last
# line of the code below?

if false
  greeting = "hello world"
end

greeting

# I would expect `nil` to be returned by referencing the `greeting` variable on line 8.
# `greeting` is initialized on line 5, inside of an `if/else` statement, which is within
# the main scope. However, because the test condition of the `if` branch on line 4
# is `false`, the `if` branch is never executed, and `greeting` is initialized to `nil`
# (not the string 'hello world').