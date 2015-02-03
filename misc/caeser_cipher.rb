# method cipher takes a string and shifts its characters
# up by a specified number

def cipher word,number
count=0;
while(word.length>count)
	char = word[count]
	num = char.sum
	#is this character Uppercase or lowercase?
	if num > 96 and num < 123 
	num = num+number
		if num>122 # raps z to a
				num=num-123
				num=97+num
			end	
	end

	if num > 64 and num < 91
		num=num+number
		if num>90
			num=num-91
			num=65+num
		end
	end
	char = num.chr
	word[count] = char
	count=count+1
end
puts word
end
puts "give me somthing to encode"
word=gets
puts "alright and how about a number"
number=gets.to_i



cipher word,number