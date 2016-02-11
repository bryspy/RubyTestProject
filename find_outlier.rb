require 'minitest/autorun'

class Find_outlier

  def find_outlier(integers)
    if integers.to_ary.select {|n| n % 2 == 0}.length == 1
      return integers.to_ary.select {|n| n % 2 == 0}[0]
    else
      integers.to_ary.select {|n| n % 2 == 1}[0]
    end
  end

end

class Test_find_outlier < MiniTest::Test

  def setup
    @f_o = Find_outlier.new
  end

  def test_find_outlier
    assert_equal(1, @f_o.find_outlier([0, 1, 2]))
    assert_equal(1, @f_o.find_outlier([0, 1, 2]))
    assert_equal(2, @f_o.find_outlier([1, 2, 3]))
    assert_equal(3, @f_o.find_outlier([2,6,8,10,3]))
  end

end
