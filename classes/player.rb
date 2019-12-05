class Player

  attr_reader :ap, :name
  attr_accessor :hp

  def initialize(name)
    @name = name
    @ap = 10
    @hp = 20
  end

  def dead?
    @hp <= 0
  end

  def attacks(ennemy)
    puts "#{@name} attacks #{ennemy.name}"
    damage_points = rand(@ap) + 1
    ennemy.takes_damage(damage_points)
  end
  
  def takes_damage(points)
    puts "#{@name} takes #{points} points of damage!"
    @hp -= points
  end


end