
module Serialization

  def get_word
    words = []
    local_file = File.open('5desk.txt', 'r')
    while !local_file.eof?
      line = local_file.readline
      puts line
      unless line.length < 5 || line.length > 12
        words << line
      end
    end
    local_file.close
    return words.sample
  end
  
  #SAVE_GAME

  #LOAD_GAME

end