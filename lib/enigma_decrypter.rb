require "./lib/offset"
require "./lib/enigma_char_map"
require 'pry'
class EnigmaDecrypter



  def code(x)
    if x == []
      @key = 5.times.map{rand(9)}.to_a
    else @key = x
    end
  end

  def math_a
    @math_a = (@key[0].to_s + @key[1].to_s).to_i
  end

  def math_b
    @math_b = (@key[1].to_s + @key[2].to_s).to_i
  end

  def math_c
    @math_c = (@key[2].to_s + @key[3].to_s).to_i
  end

  def math_d
    @math_d = (@key[3].to_s + @key[4].to_s).to_i
  end

  def offset_1
    @something1 = Offsets.new.set_offset_a
    offset_1 = @something1
    @key_a = offset_1 + math_a
  end

  def offset_2
    @something2 = Offsets.new.set_offset_b
    offset_2 = @something2
    @key_b = offset_2 + math_b
  end

  def offset_3
    @something3 = Offsets.new.set_offset_c
    offset_3 = @something3
    @key_c = offset_3 + math_c
  end

  def offset_4
  @something4 = Offsets.new.set_offset_d
  offset_4 = @something4
    @key_d = offset_4 + math_d
  end

  def encrypt(letter)
    @start=EnigmaCharMap.new
    char_map = @start.char_map.reverse_each.to_h

    @first_step = char_map[letter].to_i + @key_a
    binding.pry
    while @first_step > 39
      @first_step = @first_step - 39
    end
      @final_step = char_map.key(@first_step)
  end



end
