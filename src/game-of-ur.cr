require "./board.cr"
require "./player.cr"

module GameOfUr
  # Create a new 'Board' object
  board = Board.new

  # Initialize match
  board.print_board

  # Create players
  player_a = Player.new
  player_b = Player.new

  player_a.print_runes
  player_b.print_runes

  player_a.move_rune(4, "A03")
  player_a.move_rune(7, "B00")
  player_a.move_rune(10, "C06")
  player_a.move_rune(1, "C067")
  player_b.move_rune(7, "A06")
  player_b.move_rune(2, "A01")
  player_b.move_rune(8, "C01")
  player_b.move_rune(2, "C010")
  player_b.move_rune(2, "C09")
  player_b.move_rune(2, "C08")
  player_b.move_rune(0, "C01")

  player_a.print_runes
  player_b.print_runes
end
