# binary search kata

# I first sorted the the array and stored the indexes in a hash
# because the array index method didn't account for duplicates
# binaray search that sorts array then cuts in half each time
# to look for value. It stops at the first instance of the found
# value in array. So if there are duplicates in the array it stops
# searching when it finds the first value