def prompt(message)
  puts("=> #{message}")
end

def valid_number(num)
  if num.to_i.to_s == num || num.to_f.to_s == num 
    return num.to_f
  else
    prompt "Please enter a VALID number: "
    num = gets.chomp
    valid_number(num)
  end
end

prompt "Welcome to our Calculator"
loop do
  prompt "Please enter the first number: "
  num_1 = gets.chomp
  num_1 = valid_number(num_1)
  prompt "Please enter the second number: "
  num_2 = gets.chomp
  num_2 = valid_number(num_2)

  prompt "What operation would you like to perform? You can choose Add, Subtract, Multiply, or Divide"
  operation = gets.chomp
  loop do
    case operation
    when 'multiply'
      puts "#{num_1} multiplied by #{num_2} is #{num_1 * num_2}"
      break
    when 'add'
      puts "#{num_1} added to #{num_2} is #{num_1 + num_2}"
      break
    when 'subtract'
      puts "#{num_2} subtracted from #{num_1} is #{num_1 - num_2}"
      break
    when 'divide'
      if num_2 == 0 
        puts 'sorry you have chosen an invalid operation you cannot divide by zero. please try agin.'
      else
        puts "#{num_1} divided by #{num_2} is #{num_1 / num_2}" 
      end
      break
    else
      puts "Sorry you have entered an invalid opperation. Please try again!"
      prompt "What operation would you like to perform? You can choose Add, Subtract, Multiply, or Divide"
      operation = gets.chomp
    end
  end
prompt "Want to preform another calulation? "
answer = gets.chomp
break unless answer.downcase.start_with?'y'
end