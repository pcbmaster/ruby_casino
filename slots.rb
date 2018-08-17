# coding: utf-8
require 'pry'

class Slots
  HEIGHT = 640
  WIDTH = 480

  CHERRY = "
                   MMMMMMMMM,           
                 MM777777777MMM         
                MM7777777ZZZDM~         
          =MMMM.M7ZZZZZZZZZMM           
               MMMMZZZZZZMMM            
               MM MMMMMMMM              
               MM   MM                  
               MM    MM                 
               MM     MM                
               M       ?M               
              MM        MM              
             MM          MM             
            MM            M$            
           MM             =M            
   ~MMMMMMMMMM=         MMMMMMMMMMM     
 =MMIIIIIMOIIIMMO     MMIIIIMIIIIIMMM   
=MIIIIMIMMIMIII7MM   MNIIIMIMMIM$IIIMM  
MDII IIMMMMMIIII$M  MMII IIMMMMMIIII7M  
MIII    IIIIIIII7M~ MMII    IIIIIIII7MM 
MIIIIIIIIIIIIII77M  MMIIIIIIIIIIIII$7MI 
MMIIIIIIIIIIII77MM  MMIIIIIIIIIIIII7MM  
 MMIIIIIIIIII77NM    MMIIIIIIIIII$7$M?  
  MMIIIIIII777MM      MMNIIIIII777MM    
    MMMM8OMMMM          MMMM8OMMMMM     
        ++                  =?.         "

  
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
  end

  def start_slots
  end
end
