require "./lib/offset"
require "./lib/enigma_char_map"
require './lib/enigma_rotator'
require 'pry'

class FinalRotation
  def pull_variables
    rotators = EnigmaRotator.new
    # rotators.offset_1
    binding.pry
  end
  def encrypt
    @start=EnigmaCharMap.new
    char_map = @start.char_map
    @first_step = char_map[letter].to_i + offset_1
    while @first_step > 39
      @first_step = @first_step - 39
    end
      @final_step = char_map.key(@first_step)
  end
end
