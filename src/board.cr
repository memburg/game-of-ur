require "./dice.cr"
require "./player.cr"

class Board
  # Class constants
  FREE       = "FR"
  OCCUPIED   = "OC"
  RESTRICTED = "RE"

  # Initialize class with 2 players (this game is
  # a game of 2 :P)
  def initialize
    @moves = "P1"
    @player_a = Player.new
    @player_b = Player.new
    @board_map = { # Mapping of the board
      "A" => [FREE, FREE, FREE, RESTRICTED, RESTRICTED, FREE, FREE],
      "B" => [FREE, FREE, FREE, FREE, FREE, FREE, FREE],
      "C" => [FREE, FREE, FREE, RESTRICTED, RESTRICTED, FREE, FREE],
    }
  end

  def print_board
    puts "\33c\e[3JPLAYER A:                                        "
    puts "A1, A2, A3, A4, A5, A6, A7                                "
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
    puts "PLAYER B:                                                 "
    puts "B1, B2, B3, B4, B5, B6, B7                                "

    move_rune(@player_a, 1, "A00")
  end

  private def move_rune(p : Player, rune : Int32, position : String)
    puts p.runes
    row, middle, column = position.split("")

    if row < "A" && row > "C"
      puts "#{row} IS NOT A VALID ROW"
      return
    end

    if column < "0" || column > "7"
      puts "#{column} IS NOT A VALID COLUMN"
      return
    end

    p.runes[rune - 1] = position

    puts p.runes
    pp @board_map
  end
end
