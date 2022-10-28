# rock_paper_scissors.rb

VALID_CHOICES = ['rock', 'paper', 'scissors']

def prompt(input)
  puts ">>> #{input}"
end

# original method #

# def display_result(player, computer)
#   if (player == 'rock' && computer == 'scissors') ||
#      (player == 'paper' && computer == 'rock') ||
#      (player == 'scissors' && computer == 'paper')
#     prompt("You won!")
#   elsif (player == 'rock' && computer == 'paper') ||
#         (player == 'paper' && computer == 'scissors') ||
#         (player == 'scissors' && computer == 'rock')
#     prompt("You lost.")
#   else
#     prompt("It's a tie!")
#   end
# end

# another method - pre rubocop video #

# def display_result(player, computer)
#   pairs = [%w(rock scissors), %w(scissors paper), %w(paper rock)]
#   if pairs.include?([player, computer])
#     prompt('You won!')
#   elsif pairs.include?([computer, player])
#     prompt('You lost.')
#   else
#     prompt("It's a tie...")
#   end
# end

# a third method - pre rubocop video #

def display_result(player, computer)
  pairs = [%w(rock scissors), %w(scissors paper), %w(paper rock)]
  if player == computer
    prompt("It's a tie...")
  else
    prompt(pairs.include?([player, computer]) ? 'You won!' : 'You lost.')
  end
end

choice = ''

loop do
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')}.")
    choice = gets.chomp

    if VALID_CHOICES.include?(choice)
      break
    else
      prompt("That's not a valid chocie.")
    end
  end

  computer_choice = VALID_CHOICES.sample

  prompt("You chose: #{choice}; Computer chose: #{computer_choice}.")

  display_result(choice, computer_choice)

  prompt("Would you like to play again?")
  break unless gets.chomp.downcase.start_with?('y')
end
