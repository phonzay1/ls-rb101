# Print all even numbers from 1 to 99, inclusive, to the console, with each
# number on a separate line.

1.upto(99) do |num|
  puts num if num.even?
end