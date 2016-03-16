require 'prime'

highest_multiple = 20
range = (2..highest_multiple)

def combine_factors(range)
	factors = []
	range.each do |n|
		primes = Prime.prime_division(n)
		primes.each do |m|
			factors << m
		end
	end
	factors.sort
end

def remove_duplicates(sorted_array)
	cleaned_array = []
	cleaned_array << sorted_array.pop
	until sorted_array.empty? do
		if sorted_array.last[0] != cleaned_array.last[0]
			cleaned_array << sorted_array.pop
		else
			if sorted_array.last[1] <= cleaned_array.last[1]
				sorted_array.pop
			else
				cleaned_array << sorted_array.pop
			end
		end
	end
	cleaned_array.sort
end

combined = combine_factors(range)
prime_factors = remove_duplicates(combined)
puts Prime.int_from_prime_division(prime_factors)