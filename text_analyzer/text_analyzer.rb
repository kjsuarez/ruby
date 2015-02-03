# Takes text from file "oliver.txt" and counts it by 
# character, word, sentence and paragraph 

stopwords = %w{the a by on for of are with just but and to the my I has some in}
lines = File.readlines("oliver.txt")
line_count = lines.size
text = lines.join

total_characters = text.length
total_characters_nospaces = text.gsub(/\s+/, '').length

words = text.scan(/\w+/)
word_count = text.split.length

sentence_count = text.split(/\.|\?|!/).length
paragraph_count = text.split(/\n\n/).length

average_words_per_sentence = word_count/sentence_count
average_sentences_per_paragraph = sentence_count/paragraph_count


keywords = words.select { |word| !stopwords.include?(word) }
puts keywords.join(' ')

puts "number of lines: #{line_count}"
puts "#{total_characters} characters"
puts "#{total_characters_nospaces} characters excluding spaces"
puts "word count: #{word_count}"
puts "sentence count: #{sentence_count}"
puts "paragraph count: #{paragraph_count}"
puts "average words per sentence: #{average_words_per_sentence}"
puts "average number of sentences per paragraph: #{average_sentences_per_paragraph}"
