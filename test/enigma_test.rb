require 'minitest/autorun'
require 'minitest/pride'
require './lib/offset'
require "./lib/enigma_rotator"
require "./lib/enigma_char_map"
require "./lib/enigma"
require 'pry'


class EnigmaTest < MiniTest::Test
  def test_enigma_exists
    assert_instance_of Enigma, Enigma.new
  end

  # def test_import_keys
  #   test = Enigma.new
  #   binding.pry
  #   assert_equal 55, test.offset_1
  # end
end
