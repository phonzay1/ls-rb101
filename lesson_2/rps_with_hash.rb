VALID_CHOICES = %w(rock paper scissors lizard spock)

def win?(player1, player2)
  winning_conditions = {
    'rock' => ['scissors', 'lizard'],
    'paper' => ['rock', 'spock'],
    'scissors' => ['paper', 'lizard'],
    'lizard' => ['spock', 'paper'],
    'spock' => ['rock', 'scissors']
  }
  winning_conditions[player1].include?(player2)
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

def prompt(message)
  puts("=> #{message}")
end

def play_name(play)
  word =  case play
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

player_wins = 0
comp_wins = 0

loop do
  choice = ''
  loop do
    choose_play = <<-MSG
  Choose one: rock, paper, scissors, lizard, or spock. If you'd prefer, you can type:
    r for rock
    sc for scissors
    p for paper
    l for lizard
    sp for spock
    MSG
    prompt(choose_play)
    choice = play_name(gets.chomp)

    if VALID_CHOICES.include?(choice)
      break
    elsif choice == 's'
      prompt("Did you mean 'sc' (scissors) or 'sp' (spock)?")
    else
      prompt("That's not a valid choice.")
    end
  end

  computer_choice = VALID_CHOICES.sample

  prompt("You chose #{choice}; Computer chose #{computer_choice}")

  display_results(choice, computer_choice)

  if win?(choice, computer_choice)
    player_wins += 1
  elsif win?(computer_choice, choice)
    comp_wins += 1
  end

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

prompt("Thank you for playing. Goodbye!")
