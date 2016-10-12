# Rock, Paper, Scissors
puts 'Your move:rock, paper, or scissors'
user_wins = []
user_lose = []
while 2>1
user_moves = gets.chomp
moves = ['rock', 'paper', 'scissors']
comp_move = moves.sample
user_move = user_moves.downcase
if user_move != 'rock' && user_move != 'paper' && user_move != 'scissors' && user_move != 'bye'
puts 'That doesn\'t seem to be a valid move.'
else
puts comp_move
if user_move == comp_move
  puts 'tie'
elsif user_move == 'rock' && comp_move == 'paper'
  puts 'You lose!'
  user_lose.push(1)
elsif user_move == 'rock' && comp_move == 'scissors'
  puts 'You win!'
  user_wins.push(1)
elsif user_move == 'paper' && comp_move == 'scissors'
  puts 'You lose!'
  user_lose.push(1)
elsif user_move == 'paper' && comp_move == 'rock'
  puts 'You win!'
  user_wins.push(1)
elsif user_move == 'scissors' && comp_move == 'rock'
  puts 'You lose!'
  user_lose.push(1)
elsif user_move == 'scissors' && comp_move == 'paper'
  puts 'You win!'
  user_wins.push(1)
end
end
if user_move == 'bye'
  break
end
end
puts 'You won ' + user_wins.length.to_s + ' times!'
puts 'The computer won ' + user_lose.length.to_s + ' times!'
