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

end
