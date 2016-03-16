require 'prime'

n = 0
a = 1
b = 1
count = 0
highest_set = {number_of_primes: 0, product: 0}

while a < 1000
	while b < 1000
		solution = n**2 + a*n + b
		if solution.prime?
			count += 1
			n += 1
		else
			n = 0
			if count > highest_set[:number_of_primes]
				highest_set[:number_of_primes] = count
				highest_set[:product] = a * b
			end
			if b > 0
				b = b * -1
			else
				b = b * -1
				begin b += 1 end until b.prime?
			end
			count = 0
		end
	end 
	if a > 0
		a = a * -1
	else
		a = a * -1
		begin a += 1 end until a.prime?
	end
	b = 0
end 

puts highest_set