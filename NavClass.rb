require_relative 'slots'
require_relative 'high_low_game'

#mydude = Person(name, 500)
#start = NavClass.new(mydude)

class NavClass
 ASCII_GREETING = '                                 
                                  
 (                             
  )\      )     (               
(((_)  ( /(  (  )\   (      (   
)\___  )(_)) )\((_)  )\ )   )\  
((/__|((_)_ ((_)(_) _(_/( ((_) 
| (__ / _` |(_-<| || | \))/ _ \ 
 \___|\__,_|/__/|_||_||_| \___/ 
                                 
'
  def initialize(obj)
    
    @person_obj = obj
    @game_array = ['Slots', 'High_low_game']
    main_menu
    user_select_game
  end

  def main_menu
    puts ASCII_GREETING
    puts 'Welcome! Select a Game:
          1) Slots
          2) High/Low
          3) Exit Game
          4) test case for loop'
  end

  def user_select_game
    while true
      choice = gets.to_i
      case choice
      when 1
        play_game = eval "#{@game_array[0]}.new(@person_obj)"
        main_menu
      when 2
        play_game = eval "#{@game_array[1]}.new(@person_obj)"
        main_menu
      when 3
        exit
      else
        puts "***\nInvalid Entry!\n***"
        main_menu
        user_select_game
      end
    end
  end
end
