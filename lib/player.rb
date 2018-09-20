class Player
  # Player.new

attr_reader :name, :hit_points

  def initialize(player_name)
    @name = player_name
    @hit_points = 50
  end

  def reduce_hp
    @hit_points -= 10
  end



end
