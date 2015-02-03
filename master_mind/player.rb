class Player

	def test(board)
		x,y=gets.to_i,gets.to_i
		puts board.row[y].cell[x]
	end

	def guess_code(board,current_row)
		c1,c2,c3,c4=gets.to_i,gets.to_i,gets.to_i,gets.to_i
		board.row[current_row].cell = [$possible[c1], $possible[c2], $possible[c3], $possible[c4]]
	end
end