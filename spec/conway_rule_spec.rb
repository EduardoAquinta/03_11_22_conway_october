require_relative "../view_next_conway_generation"

describe '#conway_rule' do
  it 'no neighbours, stays empty' do
    expect(conway_rule(:empty, 0)).to eq :empty
  end

  it 'one neighbour, stays empty' do
    expect(conway_rule(:empty, 1)).to eq :empty
  end
  
  it 'two neighbours, stays empty' do
    expect(conway_rule(:empty, 2)).to eq :empty
  end

  it 'three neighbours, comes alive' do
    expect(conway_rule(:empty, 3)).to eq :alive
  end

  it 'four neighbours, stays empty' do
    expect(conway_rule(:empty, 4)).to eq :empty
  end

  it 'more than four neighbours, stays empty' do
    expect(conway_rule(:empty, 8)).to eq :empty
  end

  it 'live cell with one neighbour turns empty' do
    expect(conway_rule(:alive, 1)).to eq :empty
  end

  it 'alive cell with two neighbours stays alive' do
    expect(conway_rule(:alive, 2)).to eq :alive
  end

  it 'alive cell with three neighbours stays alive' do
    expect(conway_rule(:alive, 3)).to eq :alive
  end

  it 'alive cell with more than three neighbours turns empty' do
    expect(conway_rule(:alive, 6)).to eq :empty
  end

  
end