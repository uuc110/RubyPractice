class TicTacToe
  private
  $player1 = Array.new(9, 0)
  $player2 = Array.new(9, 0)




end
def PrintBoard(player1, player2)

  positions = %w[zero one two three four five six seven eight]
  board = {}

  positions.each_with_index do |position, index|
    board[position] = player1[index] ? 'X' : (player2[index] ? '0' : index)
  end

  puts " #{board['zero']} | #{board['one']} | #{board['two']} "
  puts '---|---|---'
  puts " #{board['three']} | #{board['four']} | #{board['five']} "
  puts '---|---|---'
  puts " #{board['six']} | #{board['seven']} | #{board['eight']} "

end


player1 = Array.new(9, false )
player2 = Array.new(9, false )
turn = 0

puts 'Welcome to Tic Tac Toe!'
puts 'Player 1, please enter your name: '
player1[0] = gets.chomp
puts 'Player 2, please enter your name: '
player2[0] = gets.chomp

puts "Player 1 is #{player1[0]} and Player 2 is #{player2[0]}"

while(true )
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
  turn += 1
end







