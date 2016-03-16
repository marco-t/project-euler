def triangle_number(num)
  result = 0
  (1..num).each do |i|
    result += i
  end
  result
end

# def factors(num)
#   numbers = (1..num).to_a
#   factors = []
#   numbers.each do |i|
#     break if i >= factors.last unless factors.empty?
#     next if factors.include? i
      
#     if num % i == 0 
#       other_factor = num / i
#       factors << i
#       factors << other_factor unless other_factor == i
#       numbers.delete(other_factor)
#     end
#   end
#   factors
# end

def first_to_have_x_divisors(x)
  start_time = Time.now
  divisors = 0
  num = 1
  triangle_num = 0
  last_divisors = 0
  until divisors > x
    triangle_num = triangle_number(num)
    factors = prime_factorization(triangle_num)
    exp = get_exponents(factors)
    mod = modify_exponents(exp)
    divisors = number_of_factors(mod)
    if divisors > last_divisors
      puts "Number: #{num}, Triangle Number: #{triangle_num}, Divisors: #{divisors}, Elapsed Time: #{Time.now - start_time} seconds"
      last_divisors = divisors
    end
    num += 1
  end
  triangle_num
end

def prime?(num)
  return false if num == 1
  return true if num == 2
  (2..num-1).each do |i|
    return false if num % i == 0
  end
  true
end

def prime_factorization(num)
  return [num] if prime?(num)
    
  prime_factors = []
  (2..num).each do |i|
    if prime?(i)
      if num % i == 0
        prime_factors << i
        factor = num / i
        if prime?(factor)
          prime_factors << factor
        else
          prime_factors << prime_factorization(factor)
        end
      end
    end
    return prime_factors if multiply_factors(prime_factors) == num
  end
  prime_factors
end

def multiply_factors(factors)
  product = 1
  factors.flatten.each { |i| product *= i }
  product
end

def get_exponents(factors)
  h = Hash.new(0)
  f = factors.flatten
  f.each {|v| h[v] +=1 }
  h
end

def modify_exponents(hash)
  h = hash
  h.each_key { |k| h[k] += 1 }
end

def number_of_factors(hash)
  result = 1
  hash.each { |key, value| result *= value }
  result
end

first_to_have_x_divisors(500)