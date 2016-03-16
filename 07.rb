require 'prime'

num = 0
count = 0

until count == 10001 do
	num += 1
	count += 1 if num.prime?
end

puts num