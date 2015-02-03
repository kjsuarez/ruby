require_relative 'board'
require_relative 'opponent'
require_relative 'player'

$possible = %w(red blue green black white)

testBoard = Board.new
player = Player.new
jerk = Opponent.new
jerk_code = Row.new

enemy_code = jerk.make_code(jerk_code)

win = false
lose = false
turns_left = 4
current_row = 0
puts "lets play master mind \n remember, your opponent's code doesn't repeat colors"

while !win && turns_left > 0
	puts "red:0 blue:1 green:2 black:3 white:4"
	player_guess = player.guess_code(testBoard,current_row)
	win = jerk.full_hint(enemy_code, player_guess)
	turns_left = turns_left-1
end
if win == true
	puts "you won!"
elsif turns_left < 1
		puts "you lost!"
end

