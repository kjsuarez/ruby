require 'socket'
require 'json'
require 'erb'
webserver = TCPServer.new('127.0.0.1', 3000)

def send(filename, session)
	if filename == ""
      filename = "index.html"
   end
   begin
   	puts filename
      displayfile = File.open(filename, 'r')
      content = displayfile.read()
      session.print content
   rescue Errno::ENOENT
      session.print "File not found\n"
   end
   session.close
end

def post(filename, params)  
   template = File.read "index.erb"
   template = ERB.new template
   name = params["name"]
   puts name
   age = params["age"]
   puts age
   form = template.result(binding)
   save_form(form, filename)
end

def save_form(form, filename)
   file_name = "index.html"
   File.open(filename, "w") { |file| file.puts form }
end

while (session = webserver.accept)
   session.print "HTTP/1.1 200/OK\r\nContent-type:text/html\r\n\r\n"
   request = session.gets.split
   puts request
   filename = request[1]
   if request[0] == "GET"   		
   		send(filename, session)
   	
   	elsif request[0] == "POST"
         puts "hey!" 
   		info_hash = request[3]
         puts "-- #{request}"
         session.print "it worked"         
   		params = JSON.parse(info_hash)
         puts params
         post(filename, params)
         session.close

   else
   	session.print "not get or post"
   end

   
end