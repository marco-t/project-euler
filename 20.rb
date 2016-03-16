def fact(n)
	if n == 0
		n = 1
	else
		n * fact(n-1)
	end
end

digits = fact(100).to_s
sum = 0

digits.each_char do |n|
	sum += n.to_i
end

puts sum