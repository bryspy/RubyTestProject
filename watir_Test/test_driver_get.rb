require 'minitest/autorun'
require 'watir-webdriver'
require 'yaml'

class Test_DriverGet < MiniTest::Unit::TestCase

  def setup
    @driver = Watir::Browser.new
    @sut = File.open("resources/sut.yaml") { |yf| YAML::load(yf) }
  end

  def teardown
    @driver.quit
  end

  def test_driver_get
    p @driver.goto "http://www.google.com"
    assert @driver.url.include?("www.google.com"), "Bad Mojo"


  end

end
