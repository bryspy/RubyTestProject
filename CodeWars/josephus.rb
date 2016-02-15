class Josephus
  def josephus(items,k)
    #your code here
  end
end

require 'minitest/autorun'

class Test_Josephus < MiniTest::Test
  def setup
    @j = Josephus.new
  end

  def test_josephus
    assert_equal([1,2,3,4,5,6,7,8,9,10], @j.josephus([1,2,3,4,5,6,7,8,9,10],1))
    assert_equal([2, 4, 6, 8, 10, 3, 7, 1, 9, 5], @j.josephus([1,2,3,4,5,6,7,8,9,10],2))
    assert_equal(['e', 's', 'W', 'o', 'C', 'd', 'r', 'a'], @j.josephus(["C","o","d","e","W","a","r","s"],4))
    assert_equal([3, 6, 2, 7, 5, 1, 4], @j.josephus([1,2,3,4,5,6,7],3))
    assert_equal([], @j.josephus([],3))
  end
end
