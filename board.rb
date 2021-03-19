require_relative "./serialization.rb"


class Board
  
  attr_accessor :word, :blank_word, :misses

  def initialize(word)
    @word = word
    @blank_word = find_blank_word(word)
    @misses = []
  end

  def find_blank_word(input_word)
    blank_word = []
    (input_word.length - 1).times do 
      blank_word << '_'
    end
    return blank_word.join('')
  end

end