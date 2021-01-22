require "./5desk.txt."

module Serialization

  def get_word
    words = []
    local_file = File.open("5desk.txt", "r")
    while !local_file.eof?
      line = local_file.readline
      unless line.length < 5 || line.length > 12
        words << line
      end
    end
    return words.sample
  end
  
  #SAVE_GAME

  #LOAD_GAME

end