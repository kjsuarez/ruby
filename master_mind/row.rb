require_relative 'cell'

class Row 
	attr_accessor :cell
	def initialize
		@cell = [c1 = Cell.new, c2 = Cell.new, c3 = Cell.new, c4 = Cell.new]	
		
	end	

end