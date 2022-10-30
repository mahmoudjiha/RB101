# lizard_spock.rb

VALID_INPUTS = {
  'r' => 'rock',
  'p' => 'paper',
  'sc' => 'scissors',
  'l' => 'lizard',
  'sp' => 'spock'
}

WIN_CONDITIONS = {
  'rock' => %w(scissors lizard),
  'paper' => %w(rock spock),
  'scissors' => %w(paper lizard),
  'lizard' => %w(paper spock),
  'spock' => %w(rock scissors)
}

def prompt(text)
  puts ">>> #{text}"
end

def result(player1_choice, player2_choice, player1_score)
  if player1_choice == player2_choice
    player1_score << 0
  elsif WIN_CONDITIONS[player1_choice].include?(player2_choice)
    player1_score << 1
  else
    player1_score << -1
  end
end

def display_result(player1_score, iterator)
  if player1_score[iterator - 1] == 0
    prompt("It's a tie...")
  elsif player1_score[iterator - 1] == 1
    prompt('You won this round!')
  else
    prompt(player1_score[iterator - 1] == 1 ? 'Round won!' : 'Round lost..')
  end
end

def track_points(two_player_array, player1_score, iterator)
  if player1_score[iterator - 1] == 1
    two_player_array[0] += 1
  elsif player1_score[iterator - 1] == -1
    two_player_array[1] += 1
  end
end

user_input = ''
user_choice = ''
user_score_each_game = []
game_number = 1
match_points = [0, 0]

loop do
  loop do
    prompt('Choose one: [r]ock, [p]aper, [sc]issors, [l]izard, [sp]ock.')
    user_input = gets.chomp

    if VALID_INPUTS.values.include?(user_input)
      user_choice = user_input
      break
    elsif user_input == 's'
      prompt('Ambiguous response...does this refer to scissors or spock?')
    elsif VALID_INPUTS[user_input]
      user_choice = VALID_INPUTS[user_input]
      break
    else
      prompt("That's not a valid choice.")
    end
  end

  computer_choice = VALID_INPUTS.values.sample

  prompt("You chose: #{user_choice}; Computer chose: #{computer_choice}.")

  result(user_choice, computer_choice, user_score_each_game)
  display_result(user_score_each_game, game_number)
  track_points(match_points, user_score_each_game, game_number)

  if match_points.include?(3)
    prompt(match_points[0] == 3 ? 'Match won!' : 'Match lost..')
    break
  else
    game_number += 1
  end

  prompt("Would you like to play again?")
  break unless gets.chomp.downcase.start_with?('y')
end

# Note: regex would have made this a lot easier
