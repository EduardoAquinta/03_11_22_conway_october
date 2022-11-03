require_relative "../view_next_conway_generation"

describe '#conway_rule' do
  it 'no neighbours, stays empty' do
    expect(conway_rule(:empty, 0)).to eq :empty
  end

  it 'one neighbour, stays empty' do
    expect(conway_rule(:empty, 1)).to eq :empty
  end
end