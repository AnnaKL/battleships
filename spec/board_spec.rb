require 'board'

describe Board do

  it { is_expected.to respond_to(:place_ship).with(3).argument }
  it { is_expected.to respond_to(:lookup).with(1).argument }

  it 'should be 10 x 10' do
    board = Board.new
    expect(board.length).to eq 10
  end

  it 'should convert "a3" into 0,2' do
    board = Board.new
    expect(board.wrapper('a3')).to eq [0,2]
  end

  it 'should convert "a10" into 0,9' do
    board = Board.new
    expect(board.wrapper('a10')).to eq [0,9]
  end

  it 'can have a cruiser placed in the 3 horizontal cells starting from A1' do
    board = Board.new
    ship = Ship.new :cruiser
    subject.place_ship(:cruiser, 'a1', 'horizontal')
    expect(subject.lookup('a1')).to eq :cruiser
    expect(subject.lookup('a2')).to eq :cruiser
    expect(subject.lookup('a3')).to eq :cruiser
  end

  it 'can have a cruiser placed in the 3 vertical cells starting from A1' do
    board = Board.new
    ship = Ship.new :cruiser
    subject.place_ship(:cruiser, 'a1', 'vertical')
    expect(subject.lookup('a1')).to eq :cruiser
    expect(subject.lookup('b1')).to eq :cruiser
    expect(subject.lookup('c1')).to eq :cruiser
  end
end