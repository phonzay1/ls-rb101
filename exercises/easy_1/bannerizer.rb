# Write a method that will take a short line of text, and print it within a box.
# You may assume that the input will always fit in your terminal window.

# Problem
# Inputs:
# - short line of text
# Outputs:
# - the short line of text printed within a box like below
# +--+
# |  |
# |  |
# |  |
# +--+
# Clarifying Questions:
# - Does formatting matter? (ex. how many blank lines above/below text, empty
# spaces to the side of the text, etc)

# Examples/Test Cases
# - ' ' (empty string)
# - 'Hello!'
# - '12345'
# - '123!@#'
# - 'To boldly go where no one has gone before.'
# - 'Sample sentence to get close to the eighty character limit more words more'

# Data Structure/Algorithm
# 1) Calculate character length (char_length) for each line. Use
# String#size plus 2 for empty space on either side
# 2) Print a line starting and ending with +, with dashes in between. Number
# of dashes == char_length
# 2) Print a line starting and ending with |, with empty spaces in between.
# Number of empty spaces == char_length
# 3) Print a line starting and ending with |, with the line of text in between,
# with an empty space on either side of it
# 4) Print a line identical to line 2
# 5) Print a line identical to line 1

# Further Exploration
# Modify this method so it will truncate the message if it will be too wide to fit
# inside a standard terminal window (80 columns, including the sides of the box).

# Problem
# Input:
# - line of text
# Output:
# - calculate char_length needed to fit this text inside the box
# - truncate the message if it will be too wide to fit
# - print the truncated message inside a box

# Examples/Test Cases
# - 'Lorem ipsum Lorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsNow over 76 chars you are'

# Data Structure/Algorithm
# - Calculate char_length as already defined in the method - 78 is the max allowable size
# - If char_length > 78, chop off any characters beyond 78. Assign the resulting string
# to a variable shortened_text and print it inside a box as already defined. char_length must be modified to 78.

# ORIGINAL PROBLEM SOLUTION
# def print_in_box(text)
#   char_length = text.size + 2
#   horizontal_border = "+#{'-' * char_length}+"
#   vertical_border = "|#{' ' * char_length}|"
#   puts horizontal_border
#   puts vertical_border
#   puts "| #{text} |"
#   puts vertical_border
#   puts horizontal_border
# end

# print_in_box('To boldly go where no one has gone before.')
# print_in_box(' ')
# print_in_box('Hello!')
# print_in_box('12345')
# print_in_box('123!@#')
# print_in_box('Sample sentence to get close to the eighty character limit more words more')

#FURTHER EXPLORATION
# def print_in_box(text)
#   char_length = text.size + 2

#   if char_length > 78
#     horizontal_border = "+#{'-' * 78}+"
#     vertical_border = "|#{' ' * 78}|"

#     puts horizontal_border
#     puts vertical_border

#     text.slice!(76..)
#     shortened_text = text
#     puts "| #{shortened_text} |"

#     puts vertical_border
#     puts horizontal_border

#   else
#     horizontal_border = "+#{'-' * char_length}+"
#     vertical_border = "|#{' ' * char_length}|"

#     puts horizontal_border
#     puts vertical_border

#     puts "| #{text} |"

#     puts vertical_border
#     puts horizontal_border
#   end
# end

# print_in_box('To boldly go where no one has gone before.')
# print_in_box('Lorem ipsum Lorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsNow over 76 chars you are')
# print_in_box('Lorem ipsum Lorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsNow over 76 chars you are keep going keep going keep going keep going keep going keep going keep going keep going keep going keep going keep going keep going keep going keep going vvvvvkeep going keep going vvvvkeep going keep going keep going keep going keep going keep going keep going keep going keep going keep going keep going keep going keep going keep going keep going keep going keep going')

# FURTHER FURTHER EXPLORATION
# # For a real challenge, try word wrapping very long messages so they appear on
# # multiple lines, but still within a box.

# Problem
# Inputs:
# - a string longer than 80 characters
# Outputs:
# - this string wrapped in a box like the previous ones, but with the message wrapped
# onto multiple lines
# Clarifying questions:

# Examples/Test Cases
# - 'To boldly go where no one has gone before.'
# - 'Lorem ipsum Lorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsNow over 76 chars you are more chars more chars more chars more chars more cNow over 152 chars you are more chars more chars more chars more chars morecNow over 228 chars you are more chars more chars more chars more chars morecNow over 304 chars you are more chars more chars more chars more chars morecNow over 380 chars you are more chars more chars more chars more chars morec'
# - 'Lorem ipsum Lorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsNow over 76 chars you are more chars more chars more chars more chars more cNow over 152 chars you are more chars more chars more chars more chars morecNow over 228 chars you are more chars more chars more chars more chars morecNow over 304 chars you are more chars more chars more chars more chars morecNow over 380 chars you are'

# Data Structure/Algorithm
# - Data Type: Strings
# - Print the box in a similar manner as the original method. When it comes to
# the printing the text section:
# - Loop over the text (string.length/76 + 1) times
# - In each loop, permanently slice off the first part of the string, from index 0 up to index 75.
# Print this sliced off text portion inside "| |"

def print_in_box(text)
  char_length = text.size + 2

  if char_length > 78
    horizontal_border = "+#{'-' * 78}+"
    vertical_border = "|#{' ' * 78}|"

    puts horizontal_border
    puts vertical_border

    loop do # loop to wrap text lines
      if text.size < 76
        puts "| #{text.slice!(0..) + (' ' * (76-text.size))} |" # This puts the final | character too far to the right
      else
        puts "| #{text.slice!(0..75)} |"
      end
      break if text.empty?
    end

    # Using the Integer#times method to iterate over the string is more complicated.
    # The code below executes correctly if text.size%76 != 0, but prints an additional
    # blank vertical border line underneath the text if text.size%76 == 0, so in order
    # to properly account for all cases we would need to add conditional statements to
    # the main loop
    # (text.size/76 + 1).times do
    #   if text.size < 76
    #     puts "| #{text.slice!(0..) + (' ' * (76-text.size))} |" # This puts the final | character too far to the right
    #   else
    #     puts "| #{text.slice!(0..75)} |"
    #   end
    # end

    puts vertical_border
    puts horizontal_border

  else
    horizontal_border = "+#{'-' * char_length}+"
    vertical_border = "|#{' ' * char_length}|"

    puts horizontal_border
    puts vertical_border

    puts "| #{text} |"

    puts vertical_border
    puts horizontal_border
  end
end

print_in_box('To boldly go where no one has gone before')
print_in_box('Lorem ipsum Lorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsNow over 76 chars you are more chars more chars more chars more chars more cNow over 152 chars you are more chars more chars more chars more chars morecNow over 228 chars you are more chars more chars more chars more chars morecNow over 304 chars you are more chars more chars more chars more chars morecNow over 380 chars you are more chars more chars more chars more chars morec')
print_in_box('Lorem ipsum Lorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsNow over 76 chars you are more chars more chars more chars more chars more cNow over 152 chars you are more chars more chars more chars more chars morecNow over 228 chars you are more chars more chars more chars more chars morecNow over 304 chars you are more chars more chars more chars more chars morecNow over 380 chars you are')