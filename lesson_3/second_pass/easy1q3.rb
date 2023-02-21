# Replace the word "important" with "urgent" in this string:

# advice = "Few things in life are as important as house training your pet dinosaur."

# Problem
# Inputs:
# - the string assigned to the local variable `advice`
# Outputs:
# - the string with the word "important" replaced by "urgent"

# D/A
# - Separate the string into words (`String#split`)
# - Replace the array element at index 6 with "urgent" (`Array#[]`)
# - Join the array elements back into a string, with each element separated by a space
# (`Array#join`)

advice = "Few things in life are as important as house training your pet dinosaur."
words = advice.split
words[6] = 'urgent'
advice = words.join(' ')
puts advice
