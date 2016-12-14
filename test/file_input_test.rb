require 'minitest/autorun'
require 'minitest/pride'
require './enigma/lib'


class File < MiniTest::Test

  def test_file
    input_file = file.new
    assert_instance_of file, input_file
  end
end
