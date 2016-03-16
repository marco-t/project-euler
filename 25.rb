count = 2
a = 1
b = 1

begin
	fib = a + b
	a = b
	b = fib
	count += 1
end until fib.to_s.length == 1000

puts count