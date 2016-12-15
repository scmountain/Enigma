require "./lib/offset"
require "./lib/enigma_char_map"
require 'pry'
class EnigmaRotator

# take a code and format it into 4 digits

  def code(x)
    @key = if x.empty?
              5.times.map { rand(9) }.to_a
            else
              x
            end
    @key.map!(&:to_s)
  end

  def math_a
    (key[0] + key[1]).to_i
  end
  def math_b
    (key[1] + key[2]).to_i
  end

  def math_c
    (key[2] + key[3]).to_i
  end

  def math_d
    (key[3] + key[4]).to_i
  end

  def offset_1
    Offsets.new.set_offset_a + math_a
  end

  def offset_2
    Offsets.new.set_offset_b + math_b
  end

  def offset_3
    Offsets.new.set_offset_c + math_c
  end

  def offset_4
    Offsets.new.set_offset_d + math_d
  end

  def encrypt(letter)
    @start=EnigmaCharMap.new
    char_map = @start.char_map
    @first_step = char_map[letter].to_i + offset_1
    while @first_step > 39
      @first_step = @first_step - 39
    end
      @final_step = char_map.key(@first_step)
  end

  private
  attr_reader :key
end
