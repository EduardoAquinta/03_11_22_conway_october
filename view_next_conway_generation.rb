def view_next_conway_generation(generation)
  next_generation = []
  generation.each do |row|
    future_row = []
    current_column = 0
    row.each do |cell|
      living_neighbours = number_of_living_neighbours(generation,row:0,column: current_column)
      future_row << conway_rule(cell,living_neighbours)
      current_column +=1
    end
    next_generation << future_row
  end
  next_generation
end

def conway_rule(cell,number_of_living_neighbours)
if (cell == :alive && number_of_living_neighbours == 2) || (cell == :alive && number_of_living_neighbours == 3) || number_of_living_neighbours == 3
  return :alive
end
:empty
end




def number_of_living_neighbours(generation,row:,column:)
  above = generation[row - 1] unless row == 0
  below = generation[row + 1]

  left = column - 1 unless column == 0
  right = column + 1

  dont_count_self = generation[row][column] == :alive ? -1 : 0

  dont_count_self + [above, generation[row], below].compact.sum do |row|
    [left, column, right].compact.count do |column|
      row[column] == :alive
    end
  end
end
