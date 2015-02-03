require_relative 'row'

class Board
	attr_accessor :row
	def initialize
		@row = [r1 = Row.new, r2 = Row.new, r3 = Row.new, r4 = Row.new]
	end		
end
