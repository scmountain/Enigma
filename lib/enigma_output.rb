class EnigmaOutput

  def text(answer)
    file = File.open("answer.txt", "w")
    file.puts answer
    file.close

  end


end
