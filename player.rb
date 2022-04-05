# Player object
# -------------
# attributes
# ----------
# -starting_life_count
# -current_lives

# methods
# -------
# -lose_a_life 
#-player_score

class Player
  attr_reader :starting_life_count
  attr_reader :current_lives
  attr_reader :name

  def initialize (name, starting_life_count)
    @name = name
    @starting_life_count = starting_life_count
    @current_lives = starting_life_count
  end

  def lose_a_life()
    @current_lives -= 1
  end

  def player_score_text()
    "#{name}: #{current_lives}/#{starting_life_count}"
  end

  def is_alive()
    current_lives > 0
  end
end

p1 = Player.new('P1', 3)
p1.to_s
p p1