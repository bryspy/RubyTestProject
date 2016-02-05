def count_squares(n)
  (1..n).inject{|sum, e| sum+e*e}
end


def count_squares2(n)
  t = 0
  (1..n).reverse_each {|x| t+= x**2}
  t
end




puts count_squares(1)
puts count_squares(2)
puts count_squares(3)
puts count_squares(5)
puts count_squares(1)
puts count_squares(8)
puts count_squares(15)
