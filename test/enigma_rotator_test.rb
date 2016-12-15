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

end
