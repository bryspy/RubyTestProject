require 'minitest/autorun'
require 'yaml'


class Test_SUT_Properties < MiniTest::Unit::TestCase
  def setup
   p @sut = YAML.load_file("resources/sut.yaml") #C:\dev\rubyDev\watir_Test\resources\sut.yaml
  end

  def test_a_test
    assert true , "Oh No"

    assert_equal("http://gc2-sys-shopper-s2.wipint.digitalriverws.net", @sut['domain-url'].fetch('shopper'), "No Good Assert")
    # assert @sut.fetch('domain-url') == "stuff", "No Good Assert"

  end

end
