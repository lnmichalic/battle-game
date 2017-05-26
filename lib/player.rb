

class Player

  attr_reader :name, :hp

  DEFAULT_HP = 100
  DEFAULT_DAMAGE = 20

  def initialize(name, hp = DEFAULT_HP)
    @name = name
    @hp = hp
  end

  def get_damaged
    @hp -= DEFAULT_DAMAGE
  end

end
