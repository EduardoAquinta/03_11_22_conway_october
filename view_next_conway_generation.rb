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

  current_row = grid[row]
  neighbours << current_row[column + 1]
  neighbours << current_row[column - 1] unless column == 0

  row_above = grid[row - 1] unless row == 0
  neighbours << row_above[column] if row_above

  row_below = grid[row + 1]
  neighbours << row_below[column] if row_below

  neighbours.count(:alive)
end
