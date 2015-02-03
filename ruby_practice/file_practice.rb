file= "files/test.txt"
puts "does #{file} exist?"
puts "yes" if File.exist?(file);
puts File.absolute_path(file)  