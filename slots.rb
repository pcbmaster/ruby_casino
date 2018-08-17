require 'pry'

class Slots
  HEIGHT = 640
  WIDTH = 480

  def draw_slot_machine(height, width)
    if width % 4 != 0
      width += 4 - (width % 4)
    end
    divider = width / 4
    for row in 0..height do
      if(row == 0 || row == height-1)
        width.times{print('#')}
        print("\n")
      else
        print('#')
        (width-2).times do |i|
          if divider % (
        print("#\n")
      end
    end
  end
  
  def initialize(player_ref)
  end

  def start_slots
  end
end
