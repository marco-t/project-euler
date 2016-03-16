class Float
  def is_whole?
    to_i == self ? true : false
  end
end

def py_triplet
  squares = (1..1000).to_a.map! { |i| i * i }.reverse!
  sum = 0
  loop do
    squares.each do |b_sqr|
      c_sqr = squares[0]
      a_sqr = c_sqr - b_sqr
      if (a_sqr**0.5).is_whole?
        if squares.include? a_sqr
          sum = sum_of_triplet(a_sqr, b_sqr, c_sqr)
          return a_sqr, b_sqr, c_sqr if sum == 1000
        end
      end
    end
    squares.shift
  end
end

def roots(a_sqr, b_sqr, c_sqr)
  a, b, c = a_sqr**0.5, b_sqr**0.5, c_sqr**0.5
end

def product(a, b, c)
  product = a * b * c
end

def sum_of_triplet(a_sqr, b_sqr, c_sqr)
  a = a_sqr**0.5
  b = b_sqr**0.5
  c = c_sqr**0.5
  sum = a + b + c
end

a_sqr, b_sqr, c_sqr = py_triplet
a, b, c = roots(a_sqr, b_sqr, c_sqr)
puts product(a, b, c)