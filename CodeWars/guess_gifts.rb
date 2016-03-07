require 'minitest/autorun'

class Guess_Gifts
  def guess_gifts(wishlist, presents)
    presents.each { |h| h.select {|k,v| }}
  end
end

class Test_Guess_Gifts < MiniTest::Test
  def setup
    @gg = Guess_Gifts.new
    @wish = [{:name => "mini puzzle", :size => "small", :clatters => "yes", :weight => "light"},
        {:name => "toy car", :size => "medium", :clatters => "a bit", :weight => "medium"},
        {:name => "card game", :size => "small", :clatters => "no", :weight => "light"}]
    @pres = [{:size => "medium", :clatters => "a bit", :weight => "medium"},
             {:size => "small", :clatters => "yes", :weight => "light"}]
  end

  def test_guess_Gifts
    assert_equal(['toy car', 'mini puzzle'], @gg.guess_gifts(@wish, @pres), "No Good!")
  end
end
