  require './lib/offset'
  # require './lib/enigma_rotator'

  class Enigma

    def encrypt(my_message, key, date = nil)

      var = Offsets.new(date)
      binding.pry
    end






  # create to final rotation from the key and the date
  # find the index of the message in your character_map
  # rotate the array from the starting index by the final rotation
  # return an array of the letters corresponding to those indices
  # make it into a string

  end
