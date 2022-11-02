require_relative '../view_next_conway_generation'

describe "#number_of_living_neighbours" do
  it "should tell me there is one live neighbour if one alive in a 2x1 grid" do
    two_by_one_grid = [:empty, :alive]
    number_of_neighbours = number_of_living_neighbours(two_by_one_grid,row: 0,column: 0)
    expect(number_of_neighbours).to eq 1
  end

  it "returns zero if there is no live neighbour to the right" do
    two_by_one_grid = [:empty, :empty]
    result = number_of_living_neighbours(two_by_one_grid, row: 0, column: 0)
    expect(result).to be_zero
  end

  it "returns zero if there is no live neighbour to the right or left" do
    three_by_one_grid = [:empty, :empty, :empty]
    result = number_of_living_neighbours(three_by_one_grid, row: 0, column: 1)
    expect(result).to be_zero
  end

  it "returns zero if the live neighbour is distant" do
    three_by_one_grid = [:alive, :empty, :empty]
    result = number_of_living_neighbours(three_by_one_grid, row: 0, column: 2)
    expect(result).to be_zero
  end
end
