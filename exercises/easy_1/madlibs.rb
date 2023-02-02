# Mad libs are a simple game where you create a story template with blanks for words.
# You, or another player, then construct a list of words and place them into the story,
# creating an often silly or funny story as a result.

# Create a simple mad-lib program that prompts for a noun, a verb, an adverb, and
# an adjective and injects those into a story that you create.

# Problem
# Inputs:
# - Entered by the user: a noun, a verb, an adverb, and an adjective
# Outputs:
# - The words from the user placed into a story template
# Clarifying questons:

# Examples/Test Cases
# - empty strings, including enter and blank spaces
# - noun: bandana, verb: dance, adverb: slowly, adjective: purple
# - noun: DOG, verb: jUmP!, adverb: qUi3tlY, adjective: Sneaky

# Data Structure/Algorithm
# - Data types: strings
# - Prompt the user to enter a noun. Store their entered noun in a variable, noun
# - Prompt the user to enter a verb. Store their entered noun in a variable, verb
# - Prompt the user to enter an adverb. Store their entered noun in a variable, adverb
# - Prompt the user to enter an adjective. Store their entered noun in a variable, adjective
# - Interpolate the variables into the mad libs string, and print the resulting string

def prompt(str)
  puts ">> #{str}"
end

def invalid_str?(string)
  string.empty? || string == ' '
end

loop do # main loop
  noun = ''
  loop do # noun loop
    prompt('Thank you for playing Mad Libs!')
    prompt('Please enter a noun.')
    noun = gets.chomp.downcase
    if invalid_str?(noun)
      prompt("That's not a valid entry.")
    else
      break
    end
  end

  verb = ''
  loop do #verb loop
    prompt('Please enter a verb.')
    verb = gets.chomp.downcase
    if invalid_str?(verb)
      prompt("That's not a valid entry.")
    else
      break
    end
  end

  adverb = ''
  loop do #adverb loop
    prompt('Please enter an adverb.')
    adverb = gets.chomp.downcase
    if invalid_str?(adverb)
      prompt("That's not a valid entry.")
    else
      break
    end
  end

  adjective = ''
  loop do #adjective loop
    prompt('Please enter an adjective.')
    adjective = gets.chomp.downcase
    if invalid_str?(adjective)
      prompt("That's not a valid entry.")
    else
      break
    end
  end

  puts "Your Mad Lib is: The #{noun} likes to #{verb} #{adverb} on #{adjective} days."

  prompt("Play again? (y for yes)")
  again = gets.chomp
  break unless again.downcase.start_with?('y') == true
end

prompt("Thank you for playing. Goodbye!")