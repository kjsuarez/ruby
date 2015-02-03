def char_to_num(input)
	char_array=input.split(//)
	char_array.each_index{
		 |char|
		if char_array.at(char)=="I"
		char_array[char]=1
		end
		if char_array.at(char)=="V"
			char_array[char]=5
		end
		if char_array.at(char)=="X"
			char_array[char]=10
		end
		if char_array.at(char)=="L"
			char_array[char]=50
		end
		if char_array.at(char)=="C"
			char_array[char]=100
		end
		if char_array.at(char)=="D"
			char_array[char]=500
		end
		if char_array.at(char)=="M"
			char_array[char]=1000
		end
	} 
	
	return char_array
end
count=0
a=0
b=1
puts "give me input"
input=gets.upcase.chomp
numbers=char_to_num(input)

puts numbers
while count<input.length 
puts"#{numbers[a]},#{numbers[b]}"


count+=1
a=count
b=a+1
end	



