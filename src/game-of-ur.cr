require "./*"

# TODO: Write documentation for `Game::Of::Ur`
module Game::Of::Ur
  VERSION = "0.1.0"

  # Create a new 'Board' object
  board = Board.new
  board.print_board
end
