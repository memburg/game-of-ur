require "./board.cr"
require "./player.cr"

module GameOfUr
  # Create a new 'Board' object
  board = Board.new

  # Initialize match
  board.print_board
end
