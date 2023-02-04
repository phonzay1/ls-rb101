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

def win?(player1, player2)
  WIN_CONDITIONS[player1].include?(player2)
end

def display_results(player, computer)
  if win?(player, computer)
    prompt("You won!")
  elsif win?(computer, player)
    prompt("Computer won!")
  else
    prompt("It's a tie!")
  end
end

def count_wins(player, opponent, wins)
  if win?(player, opponent)
    wins += 1
  end
  wins
end

def choice_name(choice)
  word =  case choice
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
  word
end

def prompt_user_choice
  choice = ''
  loop do
    prompt("Choose one: rock, paper, scissors, lizard, or spock. If you'd " \
    "prefer, you can type: r for rock, sc for scissors, p for paper, l for " \
    "lizard, sp for spock")
    choice = choice_name(gets.chomp.downcase)

    if VALID_CHOICES.include?(choice)
      return choice
    elsif choice == 's'
      prompt("Did you mean 'sc' (scissors) or 'sp' (spock)?")
    else
      prompt("That's not a valid choice.")
    end
  end
end

def play_again?
  prompt("Would you like to play again? (enter y for yes)")
  gets.chomp.downcase.start_with?('y')
end

# Game play starts for the user
loop do # option for playing multiple rounds
  prompt("Welcome to the Rock-Paper-Scissors-Lizard-Spock game. You'll be " \
  "playing against the computer. The first player with 3 wins is the grand " \
  "winner!")

  player_wins = 0
  comp_wins = 0

  loop do # loop for each round of game play until a player reaches 3 wins
    user_choice = prompt_user_choice
    computer_choice = VALID_CHOICES.sample

    prompt("You chose #{user_choice}; Computer chose #{computer_choice}")
    display_results(user_choice, computer_choice)

    player_wins = count_wins(user_choice, computer_choice, player_wins)
    comp_wins = count_wins(computer_choice, user_choice, comp_wins)

    prompt("Player has won #{player_wins} times")
    prompt("Computer has won #{comp_wins} times")

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
