# Write a program that will ask a user for an input of a word or multiple words
# and give back the number of characters. Spaces should not be counted as a character.

# - GET string from user. SET a variable to store this.
# - Delete spaces from the string and count number of characters in the resulting string.
# - PRINT result

print "Enter a word or multiple words: "
words = gets.chomp

char_number = words.delete(' ').size

puts "There are #{char_number} characters in \"#{words}\"."
