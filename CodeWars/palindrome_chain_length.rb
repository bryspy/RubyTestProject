class Palindrome_Chain_Length
  def palindrome_chain_length(n)
    length = 0
    p n
    p n.to_s.reverse.to_i
    # return length unless n.to_s.reverse.to_i != n

    while n.to_s.reverse.to_i != n
      n += n.to_s.reverse.to_i
      length += 1
      p length
    end
    length
  end
end

require 'minitest/autorun'
class Test_PalindromeChainLength < MiniTest::Test
  
  def setup
    @pcl = Palindrome_Chain_Length.new
  end
  
  def test_palindrom_chain_length
    assert_equal(4, @pcl.palindrome_chain_length(87))
  end
  
end
