class Board

  attr_accessor :spaces

  def initialize
    @spaces = []
    create_spaces
  end

  def create_spaces
    i = 1
    9.times do
      new_space = Space.new(i)
      @spaces << new_space
      i += 1
    end
  end

end

class Space
  attr_accessor :marked_by

  def initialize num
    @space_num = num
    @marked_by = nil
  end

  def mark_space symbol
    @marked_by = symbol
  end

end

class Player
  attr_reader :symbol

  def initialize symbol
    @symbol = symbol
  end
end

class Game
  attr_reader :players

  def initialize
    create_board
    add_players
  end

  def add_players
    @players = []
    playerX = Player.new("X")
    @players << playerX
    playerY = Player.new("Y")
    @players << playerY
  end

  def create_board
    new_board = Board.new
    new_board
  end
end
