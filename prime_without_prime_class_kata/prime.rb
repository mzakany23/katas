# prime method
def prime n
	arr = []
	
	for i in 2..n
		temp = []
		
		for x in 2..i-1
			result = i.to_f/x.to_f
			front = i/x
			prime = front-result
			temp << prime
		end
		
		if temp.include?(0)
			next
		else
			arr << i
		end

	end
	puts arr
end

prime(1000)

#

