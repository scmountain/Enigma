require "Minitest/autorun"
require "Minitest/pride"
require "./lib/enigma_char_map"

class EnigmaCharMapTest < Minitest::Test

@@map = EnigmaCharMap.new

  def test_if_it_exists
    assert_equal false,@@map.nil?
  end

  def test_if_it_is_a_hash
    assert_instance_of Hash, @@map.char_map
  end
end
