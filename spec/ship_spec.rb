require 'ship'

describe Ship do

  it 'knows its type' do
    ship = Ship.new :destroyer
    expect(ship.type).to eq :destroyer
  end

  it 'size of the destoyer equal 2' do
    ship = Ship.new :destroyer
    expect(ship.size).to eq 2
  end
  it 'size of cruiser equal 3' do
    ship = Ship.new :cruiser
    expect(ship.size).to eq 3
  end
end