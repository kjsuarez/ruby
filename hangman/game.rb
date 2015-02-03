class Game
	attr_accessor :turns_left, :correct_word, :placeholder, :wrong_answers
	def initialize(turns_left, correct_word, placeholder, wrong_answers)
		@turns_left = turns_left
		@correct_word = correct_word
		@placeholder = placeholder
		@wrong_answers = wrong_answers
	end		
end