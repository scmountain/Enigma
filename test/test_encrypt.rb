require 'minitest/autorun'
require 'minitest/pride'
require './lib/enigma'

# e = Enigma.new
# output = e.encrypt(my_message)# # encrypted message here
# output = e.encrypt(my_message, "12345", Date.today)
# #key and date are optional (gen random key and use today's date)

class EnigmaTest < MiniTest::Test

  def test_encryptor
    e = Enigma.new
    my_message = "this is so secret ..end.."
    output = e.encrypt(my_message)
  end


end
