require 'minitest/autorun'
require 'minitest/pride'
require './lib/room'
require './lib/house'

class TestHouse < Minitest::Test

  def setup
    @house1 = House.new("$400000", "123 sugar lane")
  end

  def test_if_house_exists
    assert_instance_of House, @house1
  end

  def test_if_house_has_price
    assert_equal "$400000", @house1.price
  end

  def test_if_house_has_address
    assert_equal "123 sugar lane", @house1.address 
  end
end
