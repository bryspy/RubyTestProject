require 'test/unit'

class NxNSquares
  def count_squares(n)
    (1..n).inject{|sum, e| sum+e*e}
  end


  def count_squares2(n)
    t = 0
    (1..n).reverse_each {|x| t+= x**2}
    t
  end
end




# puts count_squares(1)
# puts count_squares(2)
# puts count_squares(3)
# puts count_squares(5)
# puts count_squares(1)
# puts count_squares(8)
# puts count_squares(15)

Class TestCountSquares < Test::Unit::TestCase
  def test_count_squares

  end
# end

# assert_equal(count_squares(1),  1,    "count_squares(1)" )
# assert_equal(count_squares(2),  5,    "count_squares(2)" )
# assert_equal(count_squares(3),  14,   "count_squares(3)" )
# assert_equal(count_squares(5),  55,   "count_squares(5)" )
# assert_equal(count_squares(8),  204,  "count_squares(8)" )
# assert_equal(count_squares(15), 1240, "count_squares(15)")
