class Dice
  def self.roll
    # this mimics the tetrahedron shape of the dices
    dice = [0, 0, 1, 1]

    # return the sum of the random samples
    return dice.sample + dice.sample + dice.sample + dice.sample
  end
end
