
def PrintBoard(player1, player2)

  positions = %w[zero one two three four five six seven eight nine]
  board = {}


  positions.each_with_index do |position, index|
    board[position] = player1[index] ? 'X' : (player2[index] ? '0' : index)
  end

  puts " #{board['one']} | #{board['two']} | #{board['three']} "
  puts '---|---|---'
  puts " #{board['four']} | #{board['five']} | #{board['six']} "
  puts '---|---|---'
  puts " #{board['seven']} | #{board['eight']} | #{board['nine']} "

end

def checkwin(player1, player2)

  wins = [[1,2,3], [4,5,6], [7,8,9], [1,4,7], [2,5,8], [3,6,9], [1,5,9], [3,5,7]]

  wins.each do |win|
    if player1[win[0]] == 1 && player1[win[1]] == 1 && player1[win[2]] == 1
      puts 'Player 1 wins!'
      exit
    elsif player2[win[0]] == 1 && player2[win[1]] == 1 && player2[win[2]] == 1
      puts 'Player 2 wins!'
      exit
    end
  end
end




puts 'Welcome to Tic Tac Toe!'
puts 'Player 1, please enter your name: '
player1[0] = gets.chomp
puts 'Player 2, please enter your name: '
player2[0] = gets.chomp

puts "Player 1 is #{player1[0]} and Player 2 is #{player2[0]}"

while(true)
  PrintBoard(player1, player2)
  if turn % 2 == 0
    puts 'Player 2, please enter your move: '
    move = gets.chomp
    player2[move.to_i] = 1
  else
    puts 'Player 1, please enter your move: '
    move = gets.chomp
    player1[move.to_i] = 1
  end
  checkwin(player1, player2)
  turn += 1
end







