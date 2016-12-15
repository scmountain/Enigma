require 'minitest/autorun'
require 'pry'
require 'minitest/pride'
require './lib/offset'

class OffsetTests< MiniTest::Test
  def setup
    @numbers = Offsets.new(123456)
  end

  def test_offset
    assert_instance_of Offsets, @numbers
  end

  def test_insert_returns_split
    assert_equal ["3", "9","3", "6"], @numbers.split
  end

  def test_offset_a
    assert_equal 3, @numbers.offset_a
  end

  def test_offset_b
    assert_equal 9, @numbers.offset_b
  end

  def test_offset_c
    assert_equal 3, @numbers.offset_c
  end

  def test_offset_d
    # binding.pry
    assert_equal 6, @numbers.offset_d
  end

  def test_date_format
    assert_equal 6, @numbers.date_format.to_s.length
  end
end
