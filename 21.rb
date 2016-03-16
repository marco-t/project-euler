def proper_divisors(n)
  numbers = (2..n-1).to_a
  factors = []
  numbers.each do |i|
    break if i >= factors.last unless factors.empty?
    next if factors.include? i
      
    if n % i == 0 
      other_factor = n / i
      factors << i
      factors << other_factor unless other_factor == i
      numbers.delete(other_factor)
    end
  end
  factors.unshift(1)
  factors
end

def sum_of_divisors(divisors)
  divisors.inject { |result, i| result + i }
end

def amicable_pair(a, b)
  return false if a == b
  a_divisors = proper_divisors(a)
  a_divisors_sum = sum_of_divisors(a_divisors)

  b_divisors = proper_divisors(b)
  b_divisors_sum = sum_of_divisors(b_divisors)

  a == b_divisors_sum && b == a_divisors_sum
end

def sum_of_amicable_numbers(numbers)
  numbers.inject { |result, i| result + i }
end

amicable_numbers = []
(1..10000).each do |a|
  next if amicable_numbers.include? a
  divisors = proper_divisors(a)
  b = sum_of_divisors(divisors)
  if amicable_pair(a, b)
    amicable_numbers << a
    amicable_numbers << b
  end
end

puts sum_of_amicable_numbers(amicable_numbers)