require 'socket'
require 'json' 

host = 'localhost'     # The web server
port = 3000                           # Default HTTP port
path = "/index.html"                 # The file we want 
done = false

def get(path)
# This is the HTTP request we send to fetch a file
request = "GET #{path} HTTP/1.0\r\n\r\n"
socket = TCPSocket.open('localhost',3000)  # Connect to server
socket.print(request)               # Send request
response = socket.read              # Read complete response
# Split response at first blank line into headers and body
headers,body = response.split("\r\n\r\n", 2) 
print body 
end

def post(path,input)
	request = %(POST #{path} HTTP/1.0 #{input} end\r\n\r\n)
	puts request	
	socket = TCPSocket.open('localhost',3000)
	socket.print(request)
	response = socket.read
	puts response	
end

while !done
	puts "get or post?"
	input = gets.chomp
	if input == "get"
		puts "get from where?"
		path = gets.chomp
		get(path)
	elsif input == "post"
		puts "post to where?"
		path = gets.chomp
		puts "post you name"
		name = gets.chomp
		puts "post your age"
		age = gets.chomp
		info_hash = {:name=>name, :age=>age}.to_json
		puts info_hash
		post(path, info_hash)
	elsif input == "exit"
		done = true				
	else
		puts "I didn't quite catch that"
	end
end

