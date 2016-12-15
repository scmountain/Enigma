require "minitest/autorun"
require "minitest/pride"
require "./lib/enigma_output"

class EnigmaOutputTest < MiniTest::Test

  def setup
    @output = EnigmaOutput.new
  end

  def test_if_it_accepts_text
    assert @output.text("what the?").nil?
  end

end
