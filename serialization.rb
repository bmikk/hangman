require "yaml"


module Serialization

  def get_word
    words = []
    local_file = File.open('5desk.txt', 'r')
    while !local_file.eof?
      line = local_file.readline
      #puts line
      unless line.length < 5 || line.length > 12
        words << line
      end
    end
    local_file.close
    return words.sample.downcase.chomp
  end
  
  #SAVE_GAME
  def save_game(game_instance)
    #first, determine if there is an output directory, if not, make one
    #make a file that can be used to write the contents of the game_instance
    #write the contents 
    #close the file
    
    Dir.mkdir('saved_games') unless Dir.exists?('saved_games')

    puts "What you would like name your game?"
    input = gets.chomp

    filename = "saved_games/hangman_#{game_instance.player_name}_#{input}.txt"
    
    #filename = "saved_games/hangman_#{game_instance.player_name}.txt"

    serialized_game = YAML.dump(game_instance)

    File.open(filename, 'w') do |file|
      file.puts serialized_game
    end

    puts "Your game was saved as #{filename}"
  end

  #LOAD_GAME

end