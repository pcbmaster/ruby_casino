# coding: utf-8
require 'pry'

class Slots
  HEIGHT = 640
  WIDTH = 480

  REEL_STATES = ['7', '🍑', '🍒', '🌟']
  MULTIPLIERS = [5, 3, 1, .5]
  def draw_slot_machine(height, width, reels=nil)
    if width % 4 != 0
      width += 4 - (width % 4)
    end
    divider = width / 4
    for row in 0..height do
      if(row == 0 || row == height)
        width.times{print('█')}
        print("\n")
      else
        print('█')
        (width-2).times do |i|
          if (i+1) % divider == 0
            print('█')
          else
            print(' ')
          end
        end
        print("█\n")
      end
    end
  end
  
  def initialize(player_ref)
    @player = player_ref
    start_slots
  end

  def get_bet
    puts "How much are wou willing to bet? (max: #{@player.bankroll})"
    desired_bet = gets.strip.downcase
    if desired_bet == "quit"
      @quitting = true
    else
      @bet = desired_bet<@player.bankroll ? desired_bet : player.bankroll
    end
  end

  def spin_reels
    if !quitting
      reels = []
      4.times {reels << REEL_STATES[random(4)]}
      reels.each { |reel| print "#{reel} " }
      puts
      if reels[0] == reels[1] && reels[1] == reels[2] && reels[2] == reels[3] && reels[3] == reels[0]
        win = true
      else
        win = false
      end
      multiplier = 0
      if win == true
        case reels[0]
        when '7'
          multiplier = MULTIPLIERS[0]
        when '🍑'
          multipler = MULTIPLIERS[1]
        when '🍒'
          multiplier = MULTIPLIERS[2]
        when '🌟'
          multipler = MULTIPLIERS[3]
        end
        @player.bankroll += @bet * multiplier 
      else
        @player.bankroll -= @bet
      end
    end
  end
    
  def start_slots
    puts 'Welcome to the slot machine!'
    @quitting = false
    until quitting do
      get_bet
      spin_reels
  end
end
