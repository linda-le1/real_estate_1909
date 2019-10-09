require 'minitest/autorun'
require 'minitest/pride'
require './lib/room'

class RoomTest < Minitest::Test

  def setup
    @room1 = Room.new(:bedroom, 10, 13)
  end

  def test_if_room_exist
    assert_instance_of Room, @room1
  end

  def test_if_room_has_category
    assert_equal :bedroom, @room1.category
  end

  def test_if_room_area_calculates
    assert_equal 130, @room1.calculate_room_area
  end

end
