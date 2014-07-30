require './lib/board'
require './lib/space'

def w_s
  puts "\n"
end

@current_game = nil

def header
  system 'clear'
  puts "
▀▀█▀▀ ▀█▀ ▒█▀▀█ 　 ░░ 　 ▀▀█▀▀ ░█▀▀█ ▒█▀▀█ 　 ░░ 　 ▀▀█▀▀ ▒█▀▀▀█ ▒█▀▀▀
░▒█░░ ▒█░ ▒█░░░ 　 ▀▀ 　 ░▒█░░ ▒█▄▄█ ▒█░░░ 　 ▀▀ 　 ░▒█░░ ▒█░░▒█ ▒█▀▀▀
░▒█░░ ▄█▄ ▒█▄▄█ 　 ░░ 　 ░▒█░░ ▒█░▒█ ▒█▄▄█ 　 ░░ 　 ░▒█░░ ▒█▄▄▄█ ▒█▄▄▄
  "
  puts "The newest Massive Multiplayer craze!"
end

def display
  puts "It's Player " + @current_game.current_turn + "'s turn."
end

def main_menu
  header
  w_s
  puts "N > New Game"
  puts "X > Exit"
  w_s
  main_choice = gets.chomp.upcase
  if main_choice == "N"
    start_game
  elsif main_choice == "X"
    exit
  else
    system 'clear'
    puts "Invalid! Try again"
  end
end

def start_game
  @current_game = nil
  header
  w_s
  @current_game = Board.new
  play_game
end

def play_game
  header
  w_s
  display
  w_s

  main_choice = gets.chomp.upcase
  if main_choice == "N"
    @current_game.next_turn
    play_game
  end
end

main_menu
