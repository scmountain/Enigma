require 'minitest/autorun'
require 'pry'
require 'minitest/pride'
require './lib/offset'

class OffsetTests< MiniTest::Test
  def setup
    @numbers = Offsets.new
    @insert = @numbers.insert(120816)
  end

  def test_offset
    @numbers
    assert_instance_of Offsets, numbers
  end

  def test_insert_returns_split
    @numbers
    # assert_equal ["3", "9","3", "6"], @insert
  end

  def test_offset_a
    @numbers
    @insert
    # assert_equal 3, @numbers.set_offset_a
  end

  def test_offset_b
    @numbers
    @insert
    # assert_equal 9, @numbers.set_offset_b
  end

  def test_offset_c
    @numbers
    @insert
    # assert_equal 3, @numbers.set_offset_c
  end

  def test_offset_d
    @numbers
    @insert
    # assert_equal 6, @numbers.set_offset_dy
  end

end
