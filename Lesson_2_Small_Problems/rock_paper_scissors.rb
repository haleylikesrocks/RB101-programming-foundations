VALID_CHOICES = ['rock', 'paper', 'scissors']

def prompt(message)
  puts "=> #{message}"
end

def win?(first, second)
  (first == 'rock' && second == 'scissors') || 
    (first == 'paper' && second == 'rock') || 
    (first == 'scissors' && second == 'paper')
end

def display_result(player, computer)
  if win?(player, computer)
    prompt 'You won!'
  elsif player == computer
    prompt "It's a draw!"
  else
    prompt 'Sorry you lost. The computers win again!'
  end
end

loop do
  choice = ''
  loop do
    prompt "Choose one: #{VALID_CHOICES.join(' ' )}"
    choice = gets.chomp.downcase

    if VALID_CHOICES.include?(choice)
      break
    else
      prompt "That's no a valid choice"
    end
  end 

  computer_choice = VALID_CHOICES.sample

  puts "You chose: #{choice}. Computer chose: #{computer_choice}."

  display_result(choice, computer_choice)

  prompt 'Do you want to play again? (y/n)'
  answer = gets.chomp.downcase

  if answer != 'y'
    break
  end 
end