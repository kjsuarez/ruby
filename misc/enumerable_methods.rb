module Enumerable
	def my_each(arry)
      	0.upto(arry.length-1) do |count|
      		yield(arry[count])
      	end
    end 
    
    def my_each_index(arry)
    	0.upto(arry.length-1) do |count|
      	yield(count)
      	end
    end
    
  	def my_select(arry)
  		return_arry=[]
  		my_each(arry) do |element|
  			if yield(element)
  			return_arry.push(element)
  			end
  		end
  		return return_arry
	end

	def my_any?(arry)
		passing=false
		my_each(arry) do |element|
			if yield(element)
				passing=true
			end
		end
		return passing
	end

	def my_all?(arry)
		passing=true
		my_each(arry) do |element|
			if yield(element)==false
				passing=false
			end
		end
		return passing
	end

	def my_none?(arry)
		passing=true
		my_each(arry) do |element|
			if yield(element)
				passing=false
			end
		end
		return passing
	end

	def my_map(arry)
		return_arry=[]
		my_each(arry) do |element|
			return_arry.push(yield(element))
		end
		return return_arry
	end	
end

	
	
	x=[1,2,3]

z=x.my_none?(x) do |element|
	element>4
end

puts z








