require 'pry'

class ReadInFile
  def initialize(input_file)
    @input = File.readlines(input_file)
  end
end

file_data = ReadInFile.new(ARGV[0])
