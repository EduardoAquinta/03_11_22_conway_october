def view_next_conway_generation(generation)
  next_generation = []
  generation.each do |row|
    future_row = []
    row.each do |cell|
      living_neighbours = number_of_living_neighbours(generation,row:0,column:0)
      future_row << conway_rule(cell,living_neighbours)
    end
    next_generation << future_row
  end
  next_generation
end

def conway_rule(cell,number_of_living_neighbours)

return :empty unless (cell == :alive && number_of_living_neighbours == 2) || number_of_living_neighbours == 3

:alive
end




def number_of_living_neighbours(grid,row:,column:)
  above = grid[row - 1] unless row == 0
  below = grid[row + 1]

  left = column - 1 unless column == 0
  right = column + 1

  dont_count_self = grid[row][column] == :alive ? -1 : 0

  dont_count_self + [above, grid[row], below].compact.sum do |row|
    [left, column, right].compact.count do |column|
      row[column] == :alive
    end
  end
end
