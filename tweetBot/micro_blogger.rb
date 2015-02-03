require 'jumpstart_auth'

class MicroBlogger
	attr_reader :client
	def initialize
		puts "initializing"
		@client = JumpstartAuth.twitter
	end

	def tweet(message)
   @client.update(message)
end
end
blogger = MicroBlogger.new
puts blogger
done = 10
while done > 0
	puts "waiting..."
	blogger.tweet(gets.chomp)
	done = done-1
	sleep(3)
	puts done
end
