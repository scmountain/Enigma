require "./lib/offset"
require "minitest/autorun"
require "minitest/pride"
require "./lib/enigma_rotator"
require "./lib/enigma_char_map"
require 'pry'

  class Enigma
    def initialize
      @key_1 = EnigmaRotator.new.offset_1
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
