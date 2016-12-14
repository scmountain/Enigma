require 'minitest/autorun'
require 'pry'
require 'minitest/pride'
require './lib/offset'

class OffsetTests< MiniTest::Test
  def setup
    @numbers = Offsets.new(123456)
  end

  def test_offset
    assert_instance_of Offsets, numbers
  end

  def test_insert_returns_split
    assert_equal ["3", "9","3", "6"], @numbers.spilt
  end

  def test_offset_a
    assert_equal 3, @numbers.set_offset_a
  end

  def test_offset_b
    assert_equal 9, @numbers.set_offset_b
  end

  def test_offset_c
    assert_equal 3, @numbers.set_offset_c
  end

  def test_offset_d
    binding.pry
    assert_equal 6, @numbers.set_offset_d
  end

end
