VALID_CHOICES = ['rock', 'paper', 'scissors']

def prompt(message)
  puts "=> #{message}"
end

def display_result(choice, computer_choice)
  if (choice == 'rock' && computer_choice == 'scissors') || 
    (choice == 'paper' && computer_choice == 'rock') || 
    (choice == 'scissors' && computer_choice == 'paper')
    prompt 'You won!'
  elsif choice == computer_choice
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