require "gosu"

class Player_X
	def initialize(window)
		@image=Gosu::Image.new(window,"assets/player_X.png",false)
		@x = @y = 0
	end
	
	def place(x,y)
		
	end
	
end

class Player_O
	def initialize(window)
		@image=Gosu::Image.new(window,"assets/player_O.png",false)
		@x = @y = 0
	end
	
	
end







class GameWindow < Gosu::Window

	def initialize
		super(225,225,false)
		
		self.caption="Gosu Tutorial Game"
		
		@background_image=Gosu::Image.new(self,"assets/board.png",true)
	end

	def update
		
	end

	def draw
		@background_image.draw(0,0,0)
	end
end

window=GameWindow.new
window.show