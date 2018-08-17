# require 'high_low_game'
require_relative 'Slots'

class NavClass
  attr_reader :game_array
  
  def initialize
    
    @game_array = ['Slots', 'High_low_game']
    main_menu
    user_select_game
  end

  def main_menu
    puts 'Welcome! Select a Game:
          1) Slots
          2) High/Low'
  end

  def user_select_game
    choice = gets.to_i
    case choice
    when 1
      play_game = eval "#{@game_array[0]}.new"
      puts 'one 1'
    when 2
      play_game = @game_array[1].new
      puts 'two 2'
    else
      puts "***\nInvalid Entry!\n***"
      main_menu
      user_select_game
    end
  end

end

obj1 = NavClass.new