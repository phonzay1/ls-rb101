# For this practice problem, write a one-line program that creates the following
# output 10 times, with the subsequent line indented 1 space to the right:

# The Flintstones Rock!
# The Flintstones Rock!
#   The Flintstones Rock!

10.times {|num| puts((' ' * num) + 'The Flintstones Rock!')}