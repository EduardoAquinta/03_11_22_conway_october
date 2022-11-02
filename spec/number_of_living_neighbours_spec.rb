require_relative '../view_next_conway_generation'

describe "#number_of_living_neighbours" do
  it "should tell me there is one live neighbour if one alive in a 2x1 grid" do
    two_by_one_grid = [:empty, :alive]
    number_of_neighbours = number_of_living_neigbours(two_by_one_grid,row: 0,column: 0)
    expect(number_of_neighbours).to eq 1
  end
end
