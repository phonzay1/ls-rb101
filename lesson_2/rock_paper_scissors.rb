VALID_CHOICES = %w(r p sc l sp)

def win?(player1, player2)
  (player1 == 'r' && (player2 == 'sc' || player2 == 'l')) ||
    (player1 == 'p' && (player2 == 'r' || player2 == 'sp')) ||
    (player1 == 'sc' && (player2 == 'p' || player2 == 'l')) ||
    (player1 == 'l' && (player2 == 'sp' || player2 == 'p')) ||
    (player1 == 'sp' && (player2 == 'r' || player2 == 'sc'))
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
  word = case play
          when 'r'
            'rock'
          when 'p'
            'paper'
          when 'sc'
            'scissors'
          when 'l'
            'lizard'
          when 'sp'
            'spock'
          end
  word
end

player_wins = 0
comp_wins = 0

loop do
  choice = ''
  loop do
    choose_play = <<-MSG
  Choose one: rock, paper, scissors, lizard, or spock. Type:
    r for rock
    sc for scissors
    p for paper
    l for lizard
    sp for spock
    MSG
    prompt(choose_play)
    choice = gets.chomp

    if VALID_CHOICES.include?(choice)
      break
    else
      prompt("That's not a valid choice.")
    end
  end

  computer_choice = VALID_CHOICES.sample

  prompt("You chose #{play_name(choice)}; Computer chose #{play_name(computer_choice)}")

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
