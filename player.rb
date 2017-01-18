class Player
  attr_reader = :gold_coins, :health_points, :lives, :score

  def initialize (gold_coins = 0, health_points = 10, lives = 5, score = 0)
    @gold_coins = gold_coins
    @health_points = health_points
    @lives = lives
    @score = score
  end

  def do_battle
    puts "Starting battle"
    p self
    if @health_points > 1
    @health_points -= 1
    elsif @health_points == 1 && @lives != 0
      @lives -= 1
      @health_points = 10
    else
      return :restart
    end
    puts "Ending battle"
    p self
  end

  def restart
    puts "Restarting game"
    @gold_coins = 0
    @health_points = 10
    @lives = 5
    @score = 0
  end

  def level_up
    @lives += 1
  end

  def collect_treasure (coins)
    @gold_coins += coins
    if @gold_coins >= 10 && @score !=9
      @score += 1
      @gold_coins -= 10
    else
      return level_up
    end
    p self
  end
end
