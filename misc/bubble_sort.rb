x=[10,9,8,7,6,5,4,3,2,1,0]
#######
def bubble_sort(x)
total=x.length
finished=false
counter=0
while finished==false
	finished=true
	x.each_index do |current|
		print "looking at index #{current}  "
		if current+1<total
			y=x.at(current)
			z=x.at(current+1)
			if y>z
				finished=false
				temp=y
				x[current]=z
				x[current+1]=temp
			end
		end
		p x
		puts"finished is #{finished}"
	end
	puts "iteration #{counter}"
	counter+=1
end	
p x
end

def array_maker(num)
	arry=[]
	num.times do |var|
		arry.push(var)
	end
	arry.reverse!
	p arry
	return arry
end

def bubble_sort_by(x)
total=x.length
finished=false
counter=0
while finished==false
	finished=true
	x.each_index do |current|
		print "looking at index #{current}  "
		if current+1<total
			y=x.at(current)
			z=x.at(current+1)
			difference=yield(y,z)
			puts "difference = #{difference}"
			if difference<0
				finished=false
				temp=y
				x[current]=z
				x[current+1]=temp
			end
		end
		p x
		puts"finished is #{finished}"
	end
	puts "iteration #{counter}"
	counter+=1
end	
p x
end

bubble_sort_by(["this","is","a","test"])do |left,right|
right.length - left.length
end
bubble_sort([1,2,3,5,4,6,7,8,9,10])
