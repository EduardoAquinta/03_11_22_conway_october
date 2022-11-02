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
  neighbours = []

  left_edge = column == 0
  top_edge = row == 0

  current_row = grid[row]
  neighbours << current_row[column + 1]
  neighbours << current_row[column - 1] unless left_edge

  row_above = grid[row - 1] unless top_edge
  if row_above
    neighbours << row_above[column]
    neighbours << row_above[column + 1]
    neighbours << row_above[column - 1] unless left_edge
  end

  row_below = grid[row + 1]
  if row_below
    neighbours << row_below[column]
    neighbours << row_below[column + 1]
    neighbours << row_below[column - 1] unless left_edge
  end

  neighbours.count(:alive)
end
