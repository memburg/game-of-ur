require "./board.cr"
require "./player.cr"

module GameOfUr
  # Create a new 'Dice' object
  dice = Dice.new

  # Create a new 'Board' object
  board = Board.new(dice)

  # Initialize match
  board.print_board
end
