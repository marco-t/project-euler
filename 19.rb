time = Time.new(1901)
count = 0

begin 
	count += 1 if time.sunday?
	if time.month < 12
		time = Time.mktime(time.year, time.month.next)
	else
		time = Time.mktime(time.year.next, 1)
	end
	puts "#{time.month} #{time.day} #{time.year} was a Sunday"
end until time.year == 2000 && time.month == 12

puts count