feature '' do
  scenario 'place a ship in a board location' do
    board = Board.new
    board.place_ship('ship','a3','horizontal')
    expect(board.lookup('a3')).to eq 'ship'
  end
end