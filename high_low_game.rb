require_relative 'deck'
require 'pry'



class High_low_deck < Deck

  def grab_single_card
    return @shuffle.sample
  end

  def shuffle_cards
    @shuffle = @cards.shuffle
  end

end

class High_low_game

  def initialize #(obj)
    # @person_obj = obj
    # @wallet = @person_obj.bank_roll
    @my_deck = High_low_deck.new
    @old_card = @my_deck.grab_single_card
    puts ""
    puts @old_card
    puts ""
    user_bet
  end

# user selects amount to bet
  def user_bet
    puts ""
    puts "How much would you like to bet?"
    puts ""
    gets_user_bet
  end

  def gets_user_bet
    @user_bet = gets.to_i
    ## !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
    ## !!! In production, these next two lines of code will be moved to wallet_check method below !!!
    puts ""
    puts "Would you like to bet that the next card is HIGHER, or LOWER? (H/L)"                   #!!!
    puts ""
    gets_user_guess                                                                              #!!!
    ## !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
  end

  # check user_bet against wallet_amount. 
  # IF bet < wallet... continue,
  # ELSE error message, loop back to "selects
  # amount to bet"

  # def wallet_check
  #   if @wallet < @user_bet {
  #     puts "Sorry, looks like you don't have enough! Please only bet what you have..."
  #     user_bet
  #   } else {
  #     puts "Would you like to bet that the next card is HIGHER, or LOWER? (H/L)"
  #     gets_user_guess
  #   }
  # end

  # user_guess = h/l (higher or lower)
  def gets_user_guess
    @guess = gets.strip.downcase
    generate_new_card
  end

# generate new random card / display to user
def generate_new_card
  new_card = @my_deck.grab_single_card
  old_card = @old_card
  user_guess = @guess
  puts ""
  puts new_card
  puts ""
  compare_cards(new_card, old_card, user_guess)
end      

# compare user guess with new random card
def compare_cards (new_card, old_card, user_guess)
  
  # Sets numeric value to OLD card
  
  if(old_card.rank == 'A')
    old_C = 1
  elsif(old_card.rank == 'J')
    old_C = 11
  elsif(old_card.rank == 'Q')
    old_C = 12
  elsif(old_card.rank == 'K')
    old_C = 13
  else 
    old_C = old_card.rank.to_i
  end
  
  # Sets numeric value to NEW card
  
  if(new_card.rank == 'A')
    new_C = 1
  elsif(new_card.rank == 'J')
    new_C = 11
  elsif(new_card.rank == 'Q')
    new_C = 12
  elsif(new_card.rank == 'K')
    new_C = 13
  else 
    new_C = new_card.rank.to_i
  end

  # Compares numeric value of OLD Card with numeric value of NEW card

  result = (new_C <=> old_C)

  binding.pry
  # sets user_guess_input (that is a string) to a numeric value, representing whether they guessed "higher" or "lower"

  if (user_guess == 'h')
    u_g = 1
  elsif user_guess == 'l'
    u_g = -1
  else
    puts ""
    puts "error seting user_guess_input (that is a string) to a numeric value, representing whether they guessed 'higher' or 'lower'"
    puts ""
  end

  
  # compares numeric value, representing whether they guessed "higher" or "lower", with 
  if (u_g == result)
    @end_result = 1
  else
    @end_result= 0
  end
  binding.pry

end

  def update_bankroll

    if @end_result == 1
      #@wallet = @wallet + @user_bet
    elsif @end_result == 0
      #@wallet = @wallet - @user_bet
    else
    # Puts 'some error message'
    end

  end

# Loop back to "user guesses higher or lower"
end

hlg = High_low_game.new

##################################  Experimental Code  ###################################################################
