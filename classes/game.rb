require_relative 'player'

class Game
  
  def initialize
    @player1 = Player.new('Revan')
    @player2 = Player.new('Obi Wan')
    @player3 = Player.new('Jar Jar Binks')
    @player4 = Player.new('Lando')
    @players = [@player1, @player2, @player3, @player4].shuffle
    @round = 1
  end

  def game_over?
    alive_players.length == 1
  end

  def alive_players
    @players.select{|player| !player.dead?}
  end

  def next_round
    @round += 1 
    @players.rotate!
  end

  def game_status
    puts " ----- Status ------- "

    @players.each do |player|
      puts "#{player.name} hp: #{player.dead? ? 'DEAD' : player.hp}"
    end

  end

  def get_ennemy_jedi(current)

    alive_players.select{|player| player != current}.sample

  end

  def run

    until game_over? do

      current_jedi = @players.first
      ennemy_jedi = get_ennemy_jedi(current_jedi)

      puts "------ #{@round} --------"

      current_jedi.attacks(ennemy_jedi)

      game_status

      puts

   
      sleep 0.7
      next_round
      puts "Winner is #{alive_players.first.name}"

    end

  end

end