require 'pry'

class Player
  
 attr_accessor :player_name, :bankroll

  def initialize (player_name, bankroll)
		@player_name = []
    @bankroll = 500.00
  end

  def enter_player
    puts "Enter Player Name. "
    name_entered = gets.strip
    name_entered << @player_name
    puts "Hi #{player_name} "
  end

  def bankroll_amt
    puts "Your intial balance is: #{bankroll}"
    start = NavClass.new
  end

  def bank_roll
    @bankroll[0].to_i
  end
  
end
