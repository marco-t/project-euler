# 2520 is the smallest number that can be divided by 
# each of the numbers from 1 to 10 without any remainder.
#
# What is the smallest positive number that is evenly 
# divisible by all of the numbers from 1 to 20?

target = 20
x = target
no_remainder_count = 0
result = nil
until no_remainder_count >= target do
	(2..target).each do |n|
		remainder = x % n
		if remainder == 0
			no_remainder_count += 1
			result = x
		else
			no_remainder_count = 0
			x += target
			break
		end
	end
end

puts result