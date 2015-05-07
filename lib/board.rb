require_relative 'ship'

class Board

  attr_accessor :grid

  def initialize
    @grid = Array.new(10) {Array.new(10)}
  end

  def place_ship(ship_type, coordinates, direction)
    row, col = self.wrapper(coordinates)
    @grid[row][col] = ship_type
    if direction == 'horizontal'
      (ship_type.size).times do |x|
        grid[row][col + x] = ship_type
      end
     else direction == 'vertical'
      (ship_type.size).times do |x|
        grid[row + x][col] = ship_type
       end
     end
   end

  def lookup(coordinates)
    row, col = self.wrapper(coordinates)
    @grid[row][col]
  end

  def wrapper(coordinates)
    alphabet = ('a'..'z').to_a
    row, col = coordinates.split(//,2)
    @array = alphabet.index(row), col.to_i - 1
    @array
  end

  def length
    self.grid.count
  end
end