class Game

  attr_reader :player_turn, :defending_player

  def initialize(player1, player2)
    @players = [player1, player2]
    @player_turn = player1
    @defending_player = player2
  end

  def attack(target)
    target.get_damaged
    switch_turns
  end

  def player1
    @players.first
  end

  def player2
    @players.last
  end

  private

  def switch_turns
    if @player_turn == player1
      @player_turn = player2
      @defending_player = player1
    else
      @player_turn = player1
      @defending_player = player2
    end
  end
end
