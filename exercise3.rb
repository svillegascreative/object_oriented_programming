class Player
  attr_accessor :gold_coins, :health_points, :lives, :score

  def initialize
    @gold_coins = 0
    @health_points = 10
    @lives = 5
    @score = 0
  end
end
