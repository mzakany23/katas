
def fizzbuzz
	array = []

	for x in 1..100 
		array << x
	end

	array.each_with_index do |num, i|
		if num % 3 == 0 && num % 5 == 0
			p "index: #{i}   || calc: #{num} / 3 == #{num.to_f/3}  || #{num} / 5 == #{num.to_f/5} FizzBuzz!"
		elsif num % 5 == 0
			p "index: #{i}   || calc: #{num} / 5 == #{num.to_f/5} Buzz!"
		elsif num % 3 == 0
			p "index: #{i}   || calc: #{num} / 3 == #{num.to_f/3} Fizz!"
		end
	end
end

fizzbuzz