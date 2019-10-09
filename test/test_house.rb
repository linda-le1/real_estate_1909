require 'minitest/autorun'
require 'minitest/pride'
require './lib/room'
require './lib/house'

class TestHouse < Minitest::Test

  def setup
    @house_1 = House.new("$400000", "123 sugar lane", [])
  end

  def test_if_house_exists
    assert_instance_of House, @house_1
  end

  def test_if_house_has_price
    assert_equal "$400000", @house_1.price
  end

  def test_if_house_has_address
    assert_equal "123 sugar lane", @house_1.address
  end

  def test_if_house_has_rooms
    assert_equal [], @house_1.rooms
  end

  def test_if_rooms_are_added
    @house_1.add_room(:bedroom, 10, 13)
    @house_1.add_room(:bedroom, 11, 15)
    assert_equal [[:bedroom, 10, 13],[:bedroom, 11, 15]], @house_1.rooms
  end

end
