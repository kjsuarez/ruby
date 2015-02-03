
class Player
	attr_reader :name, :job, :health
	def initialize(name, level, health)
		@name=name
		@level=level
		@health=health
	end
	def level
		@level
	end
	def health
		@health
	end
	def health=(new_health)
		@health=new_health
	end
end
class Monster
	attr_reader :player_health
	def initialize(player_health)
		@player_health=player_health
	end	
	def player_health=(new_health)
		@player_health=new_health
	end
end

def poop
	return 1,2
end
a,b=poop
#puts "#{a} and #{b}"
if a==3
#	puts "its not"
elsif a==1
#	puts "yes"
end

hero=Player.new("link", 5, 20)

ganon=Monster.new(hero.health)
ganon.player_health=4
hero.health=25
ganon.player_health=hero.health




