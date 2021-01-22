require_relative "./serialization.rb"


class Board

  def initialize(word)
    @word = word
    @blank_word = find_blank_word(word)
    @misses = []
    @remaining_attempts = 6
  end

  def find_blank_word(input_word)
    blank_word = []
    input_word.length.times do 
      blank_word << '_'
    end
    return blank_word.join('')
  end




  

end