require 'minitest/autorun'
require 'minitest/pride'
require './lib/room'
require './lib/house'

class TestHouse < Minitest::Test

  def setup
    @house_1 = House.new("$400000", "123 sugar lane", @rooms)
    @room_1 = Room.new(:bedroom, 10, 13)
    @room_2 = Room.new(:bedroom, 11, 15)
    @room_3 = Room.new(:living_room, 25, 15)
    @room_4 = Room.new(:basement, 30, 41)
    @rooms = [[@room_1], [@room_2], [@room_3], [@room_4] ]
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
    @house_1.add_room(:living_room, 25, 15)
    @house_1.add_room(:basement, 30, 41)
    assert_equal [[:bedroom, 10, 13],[:bedroom, 11, 15], [:living_room, 25, 15], [:basement, 30, 41]], @house_1.rooms
  end

  # def test_if_category_of_bedroom_exists
  #   @house_1.find_room_by_category(:bedroom)
  #   assert_equal [@room_1, @room_2], @house_1.rooms.room_category
  # end

  def test_area_of_house
    house_area = (@room_1.calculate_room_area+@room_2.calculate_room_area+@room_3.calculate_room_area+@room_4.calculate_room_area)
    assert_equal 1900, house_area
  end
end
