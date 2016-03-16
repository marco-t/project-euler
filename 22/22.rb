@ch_value = { a: 1, b: 2, c: 3, d: 4, e: 5, f: 6, g: 7, h: 8,
				i: 9, j: 10, k: 11, l: 12, m: 13, n: 14, o: 15, 
				p: 16, q: 17, r: 18, s: 19, t: 20, u: 21, v: 22,
				w: 23, x: 24, y: 25, z: 26 }

def alphabetical_value(name)
	sum = 0
	name.downcase.each_char do |ch|
		sum += @ch_value[ch.to_sym]
	end
	sum
end

def alphabetical_position(name)
	@sorted_array.index(name) + 1
end

data = File.new('names.txt').gets.chomp.gsub('"', '')
@sorted_array = data.split(',').sort

total_score = 0
@sorted_array.each do |name|
	name_score = alphabetical_position(name) * alphabetical_value(name)
	total_score += name_score
end

puts total_score