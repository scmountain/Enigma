require "minitest/autorun"
require "minitest/pride"
require "./lib/enigma_char_map"
require "./lib/offset"
require 'pry'

  class Enigma
    def inititalize
      key_1 = EnigmaRotator.new.offset_1
      key_2 = EnigmaRotator.new.offset_2
      key_3 = EnigmaRotator.new.offset_3
      key_4 = EnigmaRotator.new.offset_4
    end




    # def import_file
    #   binding.pry
    #   input = ReadInFile.new
    # end
    # def encrypt(my_message, key, date = nil)
    # end






  # create to final rotation from the key and the date
  # find the index of the message in your character_map
  # rotate the array from the starting index by the final rotation
  # return an array of the letters corresponding to those indices
  # make it into a string

  end
