# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
#
# Find the sum of all the primes below two million.

require 'prime'

max_int = 2000000
range = (1..max_int)
sum = 0

range.each do |n|
	sum += n if n.prime?
end

puts sum