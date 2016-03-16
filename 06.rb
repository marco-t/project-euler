
def sum_of_squares(max_int)
	array = 0
	(1..max_int).each do |n|
		array += n*n
	end
	array
end

def square_of_sums(max_int)
	sum = 0
	(1..max_int).each do |n|
		sum += n
	end
	sum*sum
end

max_int = 100
puts "The Difference is #{square_of_sums(max_int) - sum_of_squares(max_int)}"
