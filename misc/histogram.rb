####
# method 'array_maker()' takes a string and uses a regular expresion
# to split it into an array of lowercase substrings, seperated by spaces 
# and ignoring characters such as :;'<>
####
def array_maker (string)
string.downcase.scan(/[\w']+/)	
end
####
# method 'count_frequency()' takes an array of substrings
# and creates a key in hash 'counts' for each value in the array
# it also adds 1 to the value of the key if it already exists
####
def count_frequency (word_list)
	counts=Hash.new(0)
	for word in word_list
		counts[word]+=1
	end
	counts
end
####
# 'words' is the original string we intend to count.
# 'word_list' is is the array of words derived from 'words'
# 'counts' is the hash of words and their frequency
# 'sorted_words' is 'count' sorted from lowest to highest
####
words="Implement a method #substrings that takes a word as the 
first argument and then an array of valid substrings (your dictionary) 
as the second argument. It should return a hash listing each substring 
(case insensitive) that was found in the original string and how many times it was found"
word_list=array_maker (words)
counts=count_frequency(word_list)

sorted_words=counts.sort_by{|word, count| count}
sorted_words.each do |word, count|
puts "#{word}: #{count}"
end