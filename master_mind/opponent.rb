class Opponent
	attr_accessor :x, :code, :colors_in_common, :correct_color_and_position
	def make_code(jerk_row)
		@colors = %w(red green blue black white)
		@code = []
		while @code.length < 4
			x =rand(0..4)
			if @code.include?(@colors[x])==false
				@code << @colors[x]
			end
		end
		@code.length.times do |index|
			jerk_row.cell[index].value = @code[index]
			return @code
		end
		
	end

	def give_color_hint(enemy_code, player_guess)
		@colors_in_common = 0
		
		enemy_code.length.times do |index|
			if enemy_code.include? player_guess[index]
				@colors_in_common+=1
			end
		end
		puts "correct colors: #{@colors_in_common}"
	end

	def give_number_correct(enemy_code, player_guess)
		@correct_color_and_position = 0
		
		enemy_code.length.times do |index|
			if enemy_code[index] == player_guess[index]
				@correct_color_and_position+=1
			end
		end
		puts "number correct: #{@correct_color_and_position}"
		if @correct_color_and_position == 4
			return true
		else return false
		end
	end
	def full_hint(enemy_code, player_guess)
		give_color_hint(enemy_code, player_guess)
		win = give_number_correct(enemy_code, player_guess)
		return win
	end
end
