#asks us to type in as many words as we want (one word per line, 
#continuing until we just press Enter on an empty line), 
#and which then repeats the words back to us in alphabetical order

words=[]
puts "Add entries into the array one at a time"
puts "to finish enter an empty value"
answer=gets.chomp
words.push answer
while answer.length > 1
	puts answer.length
answer=gets
words.push answer
end
puts words.sort