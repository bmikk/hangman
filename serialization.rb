require "yaml"

module Serialization

  def get_word
    words = []
    local_file = File.open('5desk.txt', 'r')
    while !local_file.eof?
      line = local_file.readline
      unless line.length < 5 || line.length > 12
        words << line
      end
    end
    local_file.close
    return words.sample.downcase.chomp
  end
  
  def save_game(game_instance)
    
    #makes a directory for the saves if it doesn't exist
    Dir.mkdir('saved_games') unless Dir.exists?('saved_games')

    #saves the game using the player name and an input string
    puts "What you would like name your game?"
    input = gets.chomp
    filename = "saved_games/hangman_#{game_instance.player_name}_#{input}.txt"
    serialized_game = YAML.dump(game_instance)
    File.open(filename, 'w') do |file|
      file.puts serialized_game
    end
    puts "Your game was saved as #{filename}"
  end

end