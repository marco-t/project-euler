sum = 0
File.readlines('data.txt').each do |line|
	sum += line.to_i
end

puts sum.to_s[0..9]