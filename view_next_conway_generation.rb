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
  :empty
end

def number_of_living_neighbours(grid,row:,column:)
  living_neighbours = 0

  current_row = grid[row]

  right_neighbour = current_row[column + 1]
  left_neighbour = current_row[column - 1] unless column == 0

  if right_neighbour == :alive
    living_neighbours += 1
  end

  if left_neighbour == :alive
    living_neighbours += 1
  end

  row_below = grid[row + 1]

  if grid[row + 1]
    south_neighbour = grid[row + 1][column]
  end

  if south_neighbour == :alive
    living_neighbours += 1
  end

  living_neighbours
end
