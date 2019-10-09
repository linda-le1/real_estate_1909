require 'minitest/autorun'
require 'minitest/pride'
require './lib/room'
require './lib/house'

class TestHouse < Minitest::Test

  def setup
    @house = House.new("$400000", "123 sugar lane", @rooms)
    @room_1 = Room.new(:bedroom, 10, 13)
    @room_2 = Room.new(:bedroom, 11, 15)
    @room_3 = Room.new(:living_room, 25, 15)
    @room_4 = Room.new(:basement, 30, 41)
    @rooms = [[@room_1], [@room_2], [@room_3], [@room_4] ]
  end

  def test_if_house_exists
    assert_instance_of House, @house
  end

  def test_if_house_has_price
    assert_equal "$400000", @house.price
  end

  def test_if_house_has_address
    assert_equal "123 sugar lane", @house.address
  end

  def test_if_house_has_rooms
    assert_equal [], @house.rooms
  end

  def test_if_rooms_are_added
    @house.add_room(@room_1)
    @house.add_room(@room_2)
    @house.add_room(@room_3)
    @house.add_room(@room_4)
    assert_equal [@room_1, @room_2, @room_3, @room_4],@house.rooms
  end

  def tests_category_of_room
    assert_equal :bedroom, @room_1
    assert_equal :bedroom, @room_2
    assert_equal :living_room, @room_3
    assert_equal :basement, @room_4
  end

  def test_area_of_house
    house_area = (@room_1.calculate_room_area+@room_2.calculate_room_area+@room_3.calculate_room_area+@room_4.calculate_room_area)
    assert_equal 1900, house_area
  end
end
