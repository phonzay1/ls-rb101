# What is the result of the last line in the code below?

greetings = { a: 'hi' }
informal_greeting = greetings[:a]
informal_greeting << ' there'

puts informal_greeting  #  => "hi there"
puts greetings

# The last line will output the hash { a: 'hi there'}. When the local variable `informal_greeting`
# is initialized on line 4, it's assigned to reference the same object as `greetings[:a],
# which is the string 'hi' inside the `greetings` hash. When the `<<` method is called
# on the value referenced by `informal_greeting` on line 5, `<<` is a mutating method,
# so the original object inside the hash is mutated, with the string ' there' appended to it.