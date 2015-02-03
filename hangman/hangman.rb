require_relative 'game'
require "yaml"

dictionary = File.read("dictionary.txt")
dictionary = dictionary.split(/\n/)

random_num = rand(0..dictionary.length)
correct_word = dictionary[random_num].chomp.downcase
wrong_answers = []

turns_left = correct_word.length+6
win = false

def make_placeholder(correct_word)
	placeholder = ""
	word_length = correct_word.length
	word_length.times do |num|
		placeholder << "_"		
	end
	return placeholder
end

def print_board(placeholder, wrong_answers)
	puts placeholder
	puts "incorrect guesses"
	puts wrong_answers
end

def change_placeholder(guess, correct_word, placeholder)	
	correct_word.length.times do |index|
		if correct_word[index] == guess
			placeholder[index] = guess
		end
	end
	return placeholder
end

def save(turns_left, correct_word, placeholder, wrong_answers)
	save_game = Game.new(turns_left, correct_word, placeholder, wrong_answers)
	yaml = YAML::dump(save_game)
	game_file = File.open("save.yaml", mode = "w+")
  	game_file.write(yaml)
  	game_file.close
	puts "game saved"
end

def play_game(turns_left, correct_word, placeholder, wrong_answers)
	win = false
	
	while turns_left > 0 && win == false	
		puts "you can save at any time by inputing 'save', cntrl C to exit "
		#puts correct_word
		puts placeholder
		guess = gets.chomp.downcase
		if guess == "save"
			save(turns_left, correct_word, placeholder, wrong_answers)
		else
			if correct_word.include?(guess)
	 			placeholder = change_placeholder(guess, correct_word, placeholder)
	 		elsif correct_word.include?(guess) == false
	 			wrong_answers << guess
	 		end
	 		print_board(placeholder,wrong_answers)
	 		turns_left = turns_left-1
	 		if placeholder == correct_word
	 			win = true
	 			puts "you got it!"
	 		end	
		end
 		puts "guesses left: #{turns_left}"
 		if turns_left == 0 			
 			puts "oh no you lost!"
 			puts "the word was #{correct_word}"
 		end
	end
end

def load_game(turns_left, correct_word, placeholder, wrong_answers)
	loaded_game = YAML.load_file('save.yaml')
	
	play_game(loaded_game.turns_left, loaded_game.correct_word, loaded_game.placeholder, loaded_game.wrong_answers)
end
################
placeholder = make_placeholder(correct_word)

puts %(Hey! welcome to Hangman
do you want to start a new game or load from 'save.txt'?)
choice_made = false
while choice_made == false
	puts %(acceptable commands: 'new', 'load')
	answer = gets.chomp
	if answer == "new"
		choice_made = true
		play_game(turns_left, correct_word, placeholder, wrong_answers)
	elsif answer == "load"
		choice_made = true
		load_game(turns_left=10, correct_word="word", placeholder="____", wrong_answers="")
	else
		puts "I don't understand that command"
	end
end









