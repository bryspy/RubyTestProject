# This problem takes its name by arguably the most important event in the life of the ancient historian Josephus:
#   according to his tale, he and his 40 soldiers were trapped in a cave by the Romans during a siege.
# Refusing to surrender to the enemy, they instead opted for mass suicide, with a twist: they formed a circle
#   and proceeded to kill one man every three, until one last man was left
#   (and that it was supposed to kill himself to end the act).
#
# Well, Josephus and another man were the last two and, as we now know every detail of the story, you may have
#   correctly guessed that they didn't exactly follow through the original idea.
# You are now to create a function that returns a Josephus permutation, taking as parameters the initial array/list
#   of items to be permuted as if they were in a circle and counted out every k places until none remained.
#
# Tips and notes: it helps to start counting from 1 up to n, instead of the usual range 0..n-1; k will always be >=1.
#
# For example, with n=7 and k=3 josephus(7,3) should act this way.
#
# [1,2,3,4,5,6,7] - initial sequence
# [1,2,4,5,6,7] => 3 is counted out and goes into the result [3]
# [1,2,4,5,7] => 6 is counted out and goes into the result [3,6]
# [1,4,5,7] => 2 is counted out and goes into the result [3,6,2]
# [1,4,5] => 7 is counted out and goes into the result [3,6,2,7]
# [1,4] => 5 is counted out and goes into the result [3,6,2,7,5]
# [4] => 1 is counted out and goes into the result [3,6,2,7,5,1]
# [] => 4 is counted out and goes into the result [3,6,2,7,5,1,4]
# So our final result is:
#
# josephus([1,2,3,4,5,6,7],3)==[3,6,2,7,5,1,4]
# For more info, browse the Josephus Permutation page on wikipedia; related kata: Josephus Survivor.

class Josephus
  def josephus2(items,k)
    ret_items = Array.new

    # while items.any?
    #   if items.size > 3
    #     ret_items << items.delete_at(k-1)
    #   else
    #     ret_items << items.delete_at(items.size-1) unless items.size == 1
    #   end
    #
    #
    #   p ret_items
    # end

    # while items.size > 1
    #   case #items.size
    #     when items.size > k
    #       ret_items << items.delete_at(k-1)
    #       p ret_items
    #     when items.size <= 3 && items.size > 1
    #       ret_items << items.delete_at(items.size-1)
    #       p ret_items
    #     else
    #       ret_items << items.delete_at(0)
    #       p ret_items
    #   end
    # end
    #
    # p ret_items << items.delete_at(0)
  end

  def josephus(items,k)
    mut_items = items
    index_order = Array.new
    ret_items = Array.new

    while mut_items.any?
      mut_items.each_with_index do |item,index|
        if (index + 1) % k == 0
          index_order << item
        end
      end

      k -= 1 unless k == 0
      index_order.each {|i| mut_items.delete_at(i)}
      p index_order
    end
    # Array.each
    index_order.each {|i| ret_items << items[i]}
    p ret_items
    ret_items
  end

  def josephus3(items, k)
    n_items = Array.new
    size = items.size

    l=k - 1
    while n_items.size < size
      if l < items.size
        p "if #{l}"
        p n_items << items[l]
        l+=k
      else
        items.delete_if {|item| n_items.include?(item)}
        l = (l - items.size) - 1
        p "else #{l}"
        p n_items << items[l]
        l+=k
      end
    end

    n_items
  end
end

require 'minitest/autorun'

class Test_Josephus < MiniTest::Test
  def setup
    @j = Josephus.new
  end

  def test_josephus
    assert_equal([1,2,3,4,5,6,7,8,9,10], @j.josephus3([1,2,3,4,5,6,7,8,9,10],1))
    assert_equal([2, 4, 6, 8, 10, 3, 7, 1, 9, 5], @j.josephus3([1,2,3,4,5,6,7,8,9,10],2))
    assert_equal(['e', 's', 'W', 'o', 'C', 'd', 'r', 'a'], @j.josephus3(["C","o","d","e","W","a","r","s"],4))
    assert_equal([3, 6, 2, 7, 5, 1, 4], @j.josephus3([1,2,3,4,5,6,7],3))
    assert_equal([], @j.josephus3([],3))
  end
end
