require 'pry'

class ReadInFile
  attr_reader :input
  def initialize(input_file)
    @input = File.open(input_file)
    @input.chomp
  end
end

file_data = ReadInFile.new(ARGV[0])
