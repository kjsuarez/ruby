require 'socket'
lines = File.readlines("index.html")
server = TCPServer.open(3000)
loop { 
	client = server.accept
	client.puts(Time.now.ctime)
	client.puts "connection established, hello friend"
	client.puts "poop"
	client.puts lines 
	client.close
 }

