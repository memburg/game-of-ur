class Player
  property runes

  def initialize
    @runes = [
      "OUT", "OUT", "OUT", "OUT", "OUT", "OUT", "OUT",
    ]
  end

  # This method will eventually be deleted,
  # only for testing purposes
  def print_runes
    pp @runes
  end
end
