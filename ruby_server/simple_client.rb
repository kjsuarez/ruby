require 'socket'
 
host = 'localhost'     # The web server
port = 3000                           # Default HTTP port
path = "/desktop/programming/ruby/ruby_server/web_server/index.html"                 # The file we want 
socket = TCPSocket.open(host, port)

while line = socket.gets
	puts line.chop
end
socket.close