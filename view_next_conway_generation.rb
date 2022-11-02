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
  row = grid[0]

  living_neighbours += 1 if row == [:alive, :empty]

  if row[-1] == :alive
    living_neighbours += 1
  else
    nil
  end

  living_neighbours
end
