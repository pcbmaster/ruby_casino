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

<<<<<<< HEAD
  def initialize #(obj)
    # @person_obj = obj
    # @wallet = @person_obj.bank_roll
    @my_deck = High_low_deck.new
    @old_card = @my_deck.grab_single_card
    puts @old_card
    user_bet
  end
=======
  def initialize(obj)
    puts 'test'

  end
# generate random card
>>>>>>> 5e38d1c310e76c39685b2f8570c1cf26d96203e4

# user selects amount to bet
  def user_bet
    puts "How much would you like to bet?"
    gets_user_bet
  end

  def gets_user_bet
    @user_bet = gets.to_i
    ## !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
    ## !!! In production, these next two lines of code will be moved to wallet_check method below !!!
    puts "Would you like to bet that the next card is HIGHER, or LOWER? (H/L)"                   #!!!
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
  puts new_card
  compare_cards (new_card, old_card, user_guess)
end      

# compare user guess with new random card
def compare_cards (new_card, old_card, user_guess)

  if(old_card.rank == 'A')
    old_C = 1
  elsif(old_card.rank == 'J')
    old_C = 11
  elsif(old_card.rank == 'Q')
    old_C = 12
  elsif(old_card.rank == 'K')
    old_C = 13
  else 
    old_C = old_card.rank
  end

  if(new_card.rank == 'A')
    new_C = 1
  elsif(new_card.rank == 'J')
    new_C = 11
  elsif(new_card.rank == 'Q')
    new_C = 12
  elsif(new_card.rank == 'K')
    new_C = 13
  else 
    new_C = new_card.rank
  end
  
  if (old_C > new_C)
    result = 1
  elsif (old_C < new_C)
    result = -1
  else 
    result = 0
  end

  if (user_guess = 'h')
    u_g = 1
  elsif user_guess = 'l'
    u_g = -1
  else
    puts "error interpreting user_guess to 1/-1 value"
  end

  if (u_g == result)
    @end_result = 1
  else
    @end_result= 0
  end
end
# IF user_guess_correct {
# double user_bet_amount and add to bankroll
# } elsif user_guess incorrect {
# subtract user_bet_amount from bankroll 
# } else {
# some error message
# }

# Loop back to "user guesses higher or lower"
end

hlg = High_low_game.new

##################################  Experimental Code  ###################################################################
