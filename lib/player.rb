require "pry"

class Player
  attr_accessor :name, :life_points

  def initialize(name)
    @name = name
    @life_points = 10
  end

  def show_state
    puts "#{name} a #{life_points} points de vie"
  end

  def gets_damage(damage)
    @life_points = @life_points - damage
    if @life_points <= 0
      puts "Le joueur #{name} a été tué"
    end
  end

  def attacked_by(player_attacked)
    puts "#{player_attacked.name} a attaqué #{name}"
    attack_damage = compute_damage
    #@life_points = @life_points - attack_damage
    #puts "Le joueur #{name} a #{life_points} points de vie"
    #puts show_state
    puts "Il lui inflige #{attack_damage} points de dommage"
    gets_damage(attack_damage)
  end

  def compute_damage
      return rand(1..6)
  end
end

binding.pry
