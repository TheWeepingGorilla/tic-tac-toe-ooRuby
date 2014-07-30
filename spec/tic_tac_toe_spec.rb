require 'rspec'
require 'tic_tac_toe'

describe "Board" do
  it "Creates an instance of the Board class" do
    test_board = Board.new
    expect(test_board).to be_an_instance_of Board
  end
end

describe "Space" do
  it "Creates an instance of the Space class" do
    test_space = Space.new
    expect(test_space).to be_an_instance_of Space
  end
end

describe "Player" do
  it "Creates an instance of the Player class" do
    test_player = Player.new
    expect(test_player).to be_an_instance_of Player
  end
end

describe "Game" do
  it "Creates an instance of the Game class" do
    test_game = Game.new
    expect(test_game).to be_an_instance_of Game
  end
end
