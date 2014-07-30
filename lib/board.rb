class Board

  attr_accessor :spaces, :current_turn

  def initialize
    @spaces = []
    create_spaces
    @current_turn = "X"
  end

  def create_spaces
    i = 1
    9.times do
      new_space = Space.new(i)
      @spaces << new_space
      i += 1
    end
  end

  def next_turn
    if @current_turn == "X"
      @current_turn = "O"
    else
      @current_turn = "X"
    end
  end

  def victory symbol
    # vert cases
    if ((@spaces[0].marked_by == symbol) &&
        (@spaces[3].marked_by == symbol) &&
        (@spaces[6].marked_by == symbol))
          a = "Player " + symbol + " has won!"
    elsif ((@spaces[1].marked_by == symbol) &&
          (@spaces[4].marked_by == symbol) &&
          (@spaces[7].marked_by == symbol))
          a = "Player " + symbol + " has won!"
    elsif ((@spaces[2].marked_by == symbol) &&
          (@spaces[5].marked_by == symbol) &&
          (@spaces[8].marked_by == symbol))
          a = "Player " + symbol + " has won!"
    #horizontal cases
    elsif ((@spaces[0].marked_by == symbol) &&
          (@spaces[1].marked_by == symbol) &&
          (@spaces[2].marked_by == symbol))
          a = "Player " + symbol + " has won!"
    elsif ((@spaces[3].marked_by == symbol) &&
          (@spaces[4].marked_by == symbol) &&
          (@spaces[5].marked_by == symbol))
          a = "Player " + symbol + " has won!"
    elsif ((@spaces[6].marked_by == symbol) &&
          (@spaces[7].marked_by == symbol) &&
          (@spaces[8].marked_by == symbol))
          a = "Player " + symbol + " has won!"
    #diagonal cases
    elsif ((@spaces[0].marked_by == symbol) &&
          (@spaces[4].marked_by == symbol) &&
          (@spaces[8].marked_by == symbol))
          a = "Player " + symbol + " has won!"
    elsif ((@spaces[2].marked_by == symbol) &&
          (@spaces[4].marked_by == symbol) &&
          (@spaces[6].marked_by == symbol))
          a = "Player " + symbol + " has won!"
    else
        a = "The saga continues."
    end
    a
  end

end
