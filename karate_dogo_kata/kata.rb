def chop(int, array)
	#----------------------------------------------------------------------------
	# binary search kata
	# I first sorted the the array and stored the indexes in a hash
	# because the array index method didn't account for duplicates
	# binaray search that sorts array then cuts in half each time
	# to look for value. It stops at the first instance of the found
	# value in array. So if there are duplicates in the array it stops
	# searching when it finds the first value

	sort_arr = array.sort
	index_chart = {}
	kept_arr = sort_arr
	whole_array = sort_arr
	half = whole_array.size/2
	first_arr = whole_array.shift(half)
	not_in_arr = -1
	pass = false

	#----------------------------------------------------------------------------
	# make the index chart
	sort_arr.each_with_index do |x,i|
		index_chart[i] = x
	end
	#----------------------------------------------------------------------------
	# cut the whole array in half and check for the given integer

	whole_array.each do |i|
		if i == int
			current_index = index_chart.key(i)
			return "PASS: #{i}'s index in the whole array is: #{current_index}"
			check = i
			pass = true
		end
	end

	#----------------------------------------------------------------------------
	# if can't find value then call itself recursivly until the last
	# possible division, and then return fail condition
	if pass == false
		if whole_array.size < 1 
			return "FAIL: return #{not_in_arr} because #{int} is not in the whole array"
			exit
		end
		chop(int,first_arr)
	end
	#----------------------------------------------------------------------------

end

numbers = [2,3,2,1,34,56,43,21,2446,78,987,1,2,4,5,6,8,9,4,0]
puts chop(2, numbers)


