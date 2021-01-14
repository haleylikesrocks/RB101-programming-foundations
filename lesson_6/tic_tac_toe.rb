require 'pry'

def prompt(string)
  puts "==> #{string}"
end 

def set_up_board
  [' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ']
end

def display_board(board)
  puts ""
  puts "     |     |"
  puts "  #{board[0]}  |  #{board[1]}  |  #{board[2]}"
  puts "     |     |"
  puts "-----|-----|-----"
  puts "     |     |"
  puts "  #{board[3]}  |  #{board[4]}  |  #{board[5]}"
  puts "     |     |"
  puts "-----|-----|-----"
  puts "     |     |"
  puts "  #{board[6]}  |  #{board[7]}  |  #{board[8]}"
  puts "     |     |"
  puts

end

def valid_choice?(choice, board)
  (1..9).include?(choice) && board[choice-1] == " " 
end 

def player_makes_move(board)
  prompt("Please choose a square 1 through 9: ")
  user_choice = gets.chomp
  until valid_choice?(user_choice.to_i, board)
    prompt("INVALID RESPONSE!")
    prompt("Please choose a square 1 through 9: ")
    display_board((1..9).to_a)
    user_choice = gets.chomp
  end
  board[user_choice.to_i - 1] = "X"
end

def computer_makes_move(board)
  computer_choice = ''
  until valid_choice?(computer_choice, board)
    computer_choice = (1..9).to_a.sample
  end
  board[computer_choice - 1] = 'O'
end

def winner(board)
  win = nil
  winning_combos = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] +
                   [[1, 4, 7], [2, 5, 8], [3, 6, 9]] +
                   [[1, 5, 9], [3, 5, 7]]
  winning_combos.each do |combo|
    win = "You" if combo.all? do |num|
      board[num-1] == 'X'
    end
    win = "The computer" if combo.all? do |num|
      board[num-1] == 'O'
    end
  end
  win
end

def board_full?(board)
  board.all?{|space| space != " "}
end

def play_game(board)
  loop do
    player_makes_move(board)
    break if winner(board) || board_full?(board)
    
    computer_makes_move(board)
    break if winner(board) || board_full?(board)

    display_board(board)
  end

  if winner(board)
    puts "#{winner(board)} won!"
    display_board(board)
  else
    puts "It's a tie!"
    display_board(board)
  end
end

def play_again?
  loop do
    prompt "Would you like to play again? (y/n)"
    answer = gets.chomp
    return true if answer == 'y'
    return false if answer == 'n'
    prompt "Invaild input!"
  end
end

loop do 
  board = set_up_board
  display_board((1..9).to_a)
  play_game(board)
  break if play_again? == false
  prompt "New board setup!"
end