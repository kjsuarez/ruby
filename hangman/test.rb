require "yaml"
class Game
	attr_accessor :turns_left, :correct_word, :placeholder, :wrong_answers
	def initialize(turns_left, correct_word, placeholder, wrong_answers)
		@turns_left = turns_left
		@correct_word = correct_word
		@placeholder = placeholder
		@wrong_answers = wrong_answers
	end	
end
def save(game)
	yaml = YAML::dump(game)
	game_file = File.open("save.yaml", mode = "w+")
  	game_file.write(yaml)
  	game_file.close
end




save_game = Game.new(10, "moop", "____", "")
save(save_game)
	
loaded_game = YAML.load_file('save.yaml')
puts loaded_game.correct_word





