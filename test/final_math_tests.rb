require "minitest/autorun"
require "minitest/pride"
require "./lib/enigma_rotator"
require "./lib/final_math"
require "./lib/enigma_char_map"

class FinalMathTest < MiniTest::Test

  def setup
    @rotation = FinalRotation.new
  end

  def test_transfer
    # pry
    @rotation.pull_variables
    # binding.pry
  end

# def test_we_can_get_final_key_b
#   @rotation.code([4,7,6,1,9])
#   @rotation.math_b
#   assert_equal 82, @rotation.offset_2
# end
#
# def test_we_can_get_final_key_c
#   @rotation.code([4,7,6,1,9])
#   @rotation.math_c
#   assert_equal 70, @rotation.offset_3
# end
#
# def test_we_can_get_final_key_d
#   @rotation.code([4,7,6,1,9])
#   @rotation.math_d
#   assert_equal 24, @rotation.offset_4
# end
#
# def test_can_we_encrypt_a_letter
#   @rotation.code([4,1,5,2,1])
#   @rotation.offset_1
#   assert_equal "3",@rotation.encrypt("w")
# end
#
# def test_can_we_encrypt_a_2nd_letter
#   @rotation.code([4,1,5,2,1])
#   @rotation.offset_2
#   assert_equal "3",@rotation.encrypt("w")
# end
end
