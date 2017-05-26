class Game

  def initialize(player1, player2)
    @players = [player1, player2]
  end

  def attack(target)
    target.get_damaged
  end

  def player1
    @players.first
  end

  def player2
    @players.last
  end

end
