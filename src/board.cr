require "./dice.cr"
require "./player.cr"

class Board
  # Class constants
  OCCUPIED      = "OC"
  AVAILABLE     = "AV"
  NOT_AVAILABLE = "NA"

  # Initialize class with 2 players (this game is
  # a game of 2 :P)
  def initialize
    @player_a = Player.new
    @player_b = Player.new
    @board_map = { # Mapping of the board
      "A" => [AVAILABLE, AVAILABLE, AVAILABLE, NOT_AVAILABLE, NOT_AVAILABLE, AVAILABLE, AVAILABLE],
      "B" => [AVAILABLE, AVAILABLE, AVAILABLE, AVAILABLE, AVAILABLE, AVAILABLE, AVAILABLE],
      "C" => [AVAILABLE, AVAILABLE, AVAILABLE, NOT_AVAILABLE, NOT_AVAILABLE, AVAILABLE, AVAILABLE],
    }
  end

  def print_board
    puts "\33c\e[3J                                                 "
    puts "LAST MOVEMENT: NA                                         "
    puts "                                                          "
    puts "     00     01     02     03     04     05     06     07  "
    puts "                                                          "
    puts "   ░░░░░░ ░░░░░░ ░░░░░░ ░░░░░░               ░░░░░░ ░░░░░░"
    puts "A  ░░░░░░ ░░░░░░ ░░░░░░ ░░░░░░               ░░░░░░ ░░░░░░"
    puts "   ░░░░░░ ░░░░░░ ░░░░░░ ░░░░░░               ░░░░░░ ░░░░░░"
    puts "                                                          "
    puts "   ░░░░░░ ░░░░░░ ░░░░░░ ░░░░░░ ░░░░░░ ░░░░░░ ░░░░░░ ░░░░░░"
    puts "B  ░░░░░░ ░░░░░░ ░░░░░░ ░░░░░░ ░░░░░░ ░░░░░░ ░░░░░░ ░░░░░░"
    puts "   ░░░░░░ ░░░░░░ ░░░░░░ ░░░░░░ ░░░░░░ ░░░░░░ ░░░░░░ ░░░░░░"
    puts "                                                          "
    puts "   ░░░░░░ ░░░░░░ ░░░░░░ ░░░░░░               ░░░░░░ ░░░░░░"
    puts "C  ░░░░░░ ░░░░░░ ░░░░░░ ░░░░░░               ░░░░░░ ░░░░░░"
    puts "   ░░░░░░ ░░░░░░ ░░░░░░ ░░░░░░               ░░░░░░ ░░░░░░"
    puts "                                                          "
    puts "PLAYER A:                       PLAYER B:                 "
    puts "A1, A2, A3, A4, A5, A6, A7      B1, B2, B3, B4, B5, B6, B7"
  end
end
