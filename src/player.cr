class Player
  def initialize
    @runes = [
      "OUT", "OUT", "OUT", "OUT", "OUT", "OUT", "OUT",
    ]
  end

  def print_runes
    pp @runes
  end

  def move_rune(rune : Int32, position : String)
    if rune > @runes.size || rune <= 0
      puts "Cannot move rune #{rune} since it does not exist"
      return
    end

    if position.size > 3 || position.includes?("8") || position.includes?("9")
      puts "Invalid position (#{position})"
      return
    end

    puts "Moving rune #{rune} to position #{position}"
    @runes[rune - 1] = position
  end
end
