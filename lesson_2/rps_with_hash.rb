require 'yaml'
MESSAGES = YAML.load_file('rpsls_messages.yml')

# Constants
VALID_CHOICES = %w(rock paper scissors lizard spock)
WIN_CONDITIONS = {
  'rock' => ['scissors', 'lizard'],
  'paper' => ['rock', 'spock'],
  'scissors' => ['paper', 'lizard'],
  'lizard' => ['spock', 'paper'],
  'spock' => ['rock', 'scissors']
}

# Methods
def prompt(message)
  puts("=> #{message}")
end

def win?(player1_fist, player2_fist)
  WIN_CONDITIONS[player1_fist].include?(player2_fist)
end

def display_results(user_fist, comp_fist)
  if win?(user_fist, comp_fist)
    prompt("You won!")
  elsif win?(comp_fist, user_fist)
    prompt("Computer won!")
  else
    prompt("It's a tie!")
  end
end

def update_win_number(player_won, wins)
  wins += 1 if player_won
  wins
end

def full_fist_name(fist)
  full_word = case fist
              when 'r', 'rock'
                'rock'
              when 'p', 'paper'
                'paper'
              when 'sc', 'scissors'
                'scissors'
              when 'l', 'lizard'
                'lizard'
              when 'sp', 'spock'
                'spock'
              when 's'
                's'
              end
  full_word
end

def option_to_show_rules
  prompt(MESSAGES['show_rules_option'])
  prompt(MESSAGES['game_rules']) if gets.chomp.downcase.start_with?('y')
end

def prompt_user_choice
  choice = ''
  loop do
    prompt(MESSAGES['user_choice_instructions'])
    choice = full_fist_name(gets.chomp.downcase)

    if VALID_CHOICES.include?(choice)
      return choice
    elsif choice == 's'
      prompt("Did you mean 'sc' (scissors) or 'sp' (spock)?")
    else
      prompt("That's not a valid choice.")
    end
  end
end

def display_win_totals(player_wins, comp_wins)
  prompt("Player has won #{player_wins} times")
  prompt("Computer has won #{comp_wins} times")
end

def play_again?
  prompt("Would you like to play again? (enter y for yes)")
  gets.chomp.downcase.start_with?('y')
end

# Game play starts for the user
loop do # option for playing multiple rounds
  prompt(MESSAGES['welcome'])

  option_to_show_rules

  player_wins = 0
  comp_wins = 0

  loop do # loop for each round of game play until a player reaches 3 wins
    user_choice = prompt_user_choice
    computer_choice = VALID_CHOICES.sample

    prompt("You chose #{user_choice}; Computer chose #{computer_choice}")
    display_results(user_choice, computer_choice)

    player_wins = update_win_number(win?(user_choice, computer_choice), player_wins)
    comp_wins = update_win_number(win?(computer_choice, user_choice), comp_wins)

    display_win_totals(player_wins, comp_wins)

    if player_wins == 3
      prompt("You have reached 3 wins - you're the grand winner!")
      break
    elsif comp_wins == 3
      prompt("The computer has reached 3 wins - it's the grand winner!")
      break
    end
  end

  break unless play_again?
end

prompt("Thank you for playing. Goodbye!")
