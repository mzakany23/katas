# they want one method

def to_postfix(numbers)
	precedence  = {
		'('  => [7],
		')'  => [7],  
		'^'  => [5],
		'*'  => [3],
		'/'  => [3],
		'+'  => [2],
		'-'  => [2]
	}
	
	stack = []
	postfix = ""

	# scan set
	numbers.each_char do |char|
		
		found_operator = ['*','/','+','-','^','(',')'].include?(char)
		found_digit    = ['0','1','2','3','4','5','6','7','8','9'].include?(char)
		last_operand   = stack.last #top of stack

		if stack.empty?
			if found_digit
				postfix += char
			elsif found_operator
				stack << char
			end

		elsif stack.count >= 0

			if found_digit
				postfix += char
			elsif found_operator
				if precedence[char][0] > precedence[last_operand][0]
					stack << char	
				else
					postfix += stack.pop
					unless stack.empty?
						if precedence[char][0] == precedence[stack.last][0]
							postfix += stack.pop
						end
					end
					stack << char
				end

			end
		end 
	#loop end
	end

	# push the rest to the posftfix string
	leftover = stack.count

	leftover.times do 
		postfix += stack.last
		stack.pop
	end

	postfix
#method end
end

