require "minitest/autorun"
require "minitest/pride"
require "./lib/enigma_rotator"
require "./lib/enigma_char_map"

class EnigmaRotatorTest < MiniTest::Test

  def setup
    @rotation = EnigmaRotator.new
  end

  def test_there_is_a_key
  assert_equal false,  @rotation.code([]).nil?
  end

  def test_we_enter_key
    assert_equal ["4", "7", "6", "1", "9"],@rotation.code([4,7,6,1,9])
  end

  def test_the_key_is_an_array
    assert_instance_of Array,@rotation.code([4,7,6,1,9])
  end

  def test_we_can_get_a_random_key
    assert_equal false, @rotation.code([]).nil?
  end

  def test_random_key_is_an_array
    assert_instance_of Array,@rotation.code([])
  end

  def test_we_get_first_part_of_key
    @rotation.code([4,7,6,1,9])
    assert_equal 47, @rotation.math_a
  end

  def test_we_get_second_part_of_key
    @rotation.code([4,7,6,1,9])
    assert_equal 76, @rotation.math_b
  end

  def test_we_get_third_part_of_key
    @rotation.code([4,7,6,1,9])
    assert_equal 61, @rotation.math_c
  end

  def test_we_get_fourth_part_of_key
    @rotation.code([4,7,6,1,9])
    assert_equal 19, @rotation.math_d
  end

  def test_we_can_get_final_key_a
    @rotation.code([4,7,6,1,9])
    @rotation.math_a
    # assert_equal 52, @rotation.offset_1
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
