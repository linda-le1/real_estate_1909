require_relative "room"


class House

  attr_reader :price,
              :address,
              :rooms

  def initialize (price, address, rooms)
    @price = price
    @address = address
    @rooms =[]
  end

  def add_room (room_category, length, width)
  room = [room_category, length, width]
    @rooms << room
  end

  def find_room_by_category(room_category)
  list_of_rooms = []
    rooms.each do |room|
      if rooms.category == room_category
        list_of_rooms << room
      end
    end
    list_of_rooms
  end
end
