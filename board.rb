require_relative "./serialization.rb"


class Board

  def initialize(word)
    @word = word
    @blank_word = find_blank_word(word)
    @misses = []
    @remaining_attempts = 6
  end

  def find_blank_word(input_word)
    #return the string but with each character replaced with a '_'
    blank_word = []
    input_word.length.times do 
      blank_word << '_'
    end
    return blank_word.join('')
  end




  end

end