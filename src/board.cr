require "./dice.cr"
require "./player.cr"

class Board
  # Class constants
  FREE       = "FR"
  RESTRICTED = "RE"

  # Initialize class with 2 players (this game is
  # a game of 2 :P)
  def initialize(dice : Dice)
    @moves = "P1"
    @player_a = Player.new("A")
    @player_b = Player.new("B")
    @board_map = { # Mapping of the board
      "A" => [FREE, FREE, FREE, FREE, RESTRICTED, RESTRICTED, FREE, FREE],
      "B" => [FREE, FREE, FREE, FREE, FREE, FREE, FREE, FREE],
      "C" => [FREE, FREE, FREE, FREE, RESTRICTED, RESTRICTED, FREE, FREE],
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

    move_rune(@player_a, 1, "A07")
  end

  private def move_rune(p : Player, rune : Int32, position : String)
    row, middle, column = position.split("")

    if (row < "A") && (row > "C")
      puts "#{row} IS NOT A VALID ROW"
      return
    end

    if (column < "0") || (column > "7")
      puts "#{column} IS NOT A VALID COLUMN"
      return
    end

    if (p.name == "A" && position.includes?("C")) || (p.name == "B" && position.includes?("A"))
      puts "#{position} IS NOT A VALID POSITION FOR PLAYER #{p.name}"
      return
    end

    if @board_map[row][column.to_i] == RESTRICTED
      puts "#{position} IS AN INACCESSIBLE POSITION"
      return
    end

    # Reassign the new value in case there is
    # no error during the validation
    p.runes[rune - 1] = position
    @board_map[row][column.to_i] = "A#{rune}"
  end
end
