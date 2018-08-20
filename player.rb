require 'pry'
class Player
  
  attr_accessor :player_name, :bankroll

  def initialize (player_name, bankroll)
    @player_name = []
    @bankroll = [500]
    enter_player
  end

  def enter_player
    puts "Enter Player Name. "
    name_entered = gets.strip
    @player_name << name_entered
    puts "Hi #{player_name} "
    bankroll_amt
  end

  def bankroll_amt
    puts "Your intial balance is: #{bankroll}"
  end
  
end
