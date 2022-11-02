require_relative '../view_next_conway_generation'

describe "#number_of_living_neighbours" do
  it "returns one if there is a live neighbour to the right" do
    grid = [[:empty, :alive]]
    result = number_of_living_neighbours(grid, row: 0, column: 0)
    expect(result).to eq 1
  end

  it "returns zero if there is no live neighbour to the right" do
    grid = [[:empty, :empty]]
    result = number_of_living_neighbours(grid, row: 0, column: 0)
    expect(result).to be_zero
  end

  it "returns zero if there is no live neighbour to the right or left" do
    grid = [[:empty, :empty, :empty]]
    result = number_of_living_neighbours(grid, row: 0, column: 1)
    expect(result).to be_zero
  end

  it "returns zero if the live neighbour is distant" do
    grid = [[:alive, :empty, :empty]]
    result = number_of_living_neighbours(grid, row: 0, column: 2)
    expect(result).to be_zero
  end

  it "returns zero if there are two cells + we ask the second cell" do
    grid = [[:empty, :alive]]
    result = number_of_living_neighbours(grid, row: 0, column: 1)
    expect(result).to eq 0
  end

  it "returns zero correctly even when the grid is wide" do
    grid = [[:empty, :empty, :alive]]
    result = number_of_living_neighbours(grid, row: 0, column: 0)
    expect(result).to eq 0
  end
end