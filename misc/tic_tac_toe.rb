	
	def display_board(board)
	p "|#{board[1]}|#{board[2]}|#{board[3]}|"
	p "|#{board[4]}|#{board[5]}|#{board[6]}|"
	p "|#{board[7]}|#{board[8]}|#{board[9]}|"
	end

	def update_board(board,num,x_or_o)
		board[num]=x_or_o
	end

	def check_board(num,board)
		if board[num]!=" "||num>9||num<1
			return false
		else
			return true
		end
	end
#######
def check(x,a,b,c)
	if x.include?(a)&&x.include?(b)&&x.include?(c)
		return true
	end
end

def win_check(plays)
	if check(plays,1,2,3)||check(plays,1,4,7)||check(plays,1,9,5)||check(plays,2,8,5)||check(plays,3,6,9)||check(plays,3,7,5)||check(plays,6,4,5)||check(plays,7,8,9)
		return true
		else
		return false
	end
end
def cat_check(plays)
	if plays.length>8
		puts "cat game"
		return true
	else
		return false
	end
end
#####
class Player
	attr_accessor :x_or_o

	def initialize(x_or_o)
		@x_or_o=x_or_o
	end

	def play(board)
		pass=false
		puts "#{x_or_o}'s move"
		puts "where will you move?"
		move=gets.chomp.to_i
		while pass==false
			pass=check_board(move,board)
			if pass==false
				puts "That's an illegal move, try again"
				move=gets.chomp.to_i
			end
		end
		return move
	end
end	




board=Hash.new(" ")


x=Player.new("x")
o=Player.new("o")


#############
won=false
quit=false
cat_count=1
xs_turn=true
x_plays=[]
o_plays=[]
total_plays=[]
puts "lets play a game"
display_board(board)
while won==false&&quit==false&&cat_count<9
	if xs_turn==true
		current=x.play(board).to_i
		x_plays<<current
		puts "x's moves: #{x_plays}"
		update_board(board,current,"x")
		display_board(board)
		xs_turn=!xs_turn
	end
	if xs_turn==false
		current=o.play(board).to_i
		o_plays<<current
		puts "o's moves: #{o_plays}"
		update_board(board,current,"o")
		display_board(board)
		xs_turn=!xs_turn		
	end
	if win_check(x_plays)
		puts "X wins!"
		puts "#{x_plays}"
		won=true
	elsif win_check(o_plays)
		puts "O wins!"
		puts "#{o_plays}"
		won=true
	end
	cat_count+=1
	if cat_count>9
		puts "cat game"
	end
end

############
=begin
won=false
quit=false
xs_turn=true
x_plays=[]
o_plays=[]
$board=Hash.new("_")

def display_board
	
	p "|#{$board[1]}|#{$board[2]}|#{$board[3]}|"
	p "|#{$board[4]}|#{$board[5]}|#{$board[6]}|"
	p "|#{$board[7]}|#{$board[8]}|#{$board[9]}|"
end
def play(player,xs_turn)
	current=""
	puts "its #{player}'s turn"
	current=gets.chomp.to_i
	if $board[current] != "_"
		puts "that spot's taken"
		xs_turn=!xs_turn
	else
	$board[current]="#{player}"
	if player=="x"
		x_plays=[current]
	else
		o_plays=[current]
	end			
	end

	return current
end

while won==false&&quit==false
	if xs_turn==true
		current=play("x",xs_turn)
	else
		current=play("o",xs_turn)
	end
	display_board
		if current==0
		quit=true				
		end
		xs_turn=!xs_turn
end
####
x.any?{|num| /(1&2&3)|(4&5&6)|(7&8&9)|(1&4&7)|(2&5&8)|(3&6&9)|(1&5&2)|(3&5&7)/}
####
=end












