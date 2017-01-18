class Player
  attr_accessor :gold_coins, :health_points, :lives, :score

  def initialize
    @gold_coins = 0
    @health_points = 10
    @lives = 5
    @score = 0
  end

  def do_battle
    @health_points -= 1

    if @health_points == 0
      @lives -= 1
      @health_points = 10
    end

    if @lives == 0
      restart
    end
  end

  def restart
    @gold_coins = 0
    @health_points = 10
    @lives = 5
    @score = 0
  end

  def level_up
    @lives += 1
  end

  def collect_treasure(treasure)
    @gold_coins += treasure

    # Increase score by 1 for every 10 gold coins collected
    # NOTE: This works ONLY because you cannot lose coins
    # and you cannot add to your score through other actions (methods)
    @score = @gold_coins / 10

    # Run level_up whenever score increases by 10
    # NOTE: This works, because score never decreases
    # (When you lose all your lives, game is restarted)
    if @score % 10 == 0
      level_up
    end
  end

end
