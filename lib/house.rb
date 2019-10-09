require_relative "room"
# require 'pry'

class House

  attr_reader :price,
              :address,
              :rooms

  def initialize (price, address, rooms)
    @price = price
    @address = address
    @rooms =[]
  end

  def add_room(room)
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

  def calculate_house_area
    @rooms.length.sum * @rooms.width.sum
  end
end
