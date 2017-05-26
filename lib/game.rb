class Game

  attr_reader :attacking_player, :defending_player

  def initialize(player1, player2)
    @players = [player1, player2]
    @attacking_player = player1
    @defending_player = player2
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

  def switch_turns
    if @attacking_player == player1
      @attacking_player = player2
      @defending_player = player1
    else
      @attacking_player = player1
      @defending_player = player2
    end
  end
end
