def valid_number(num)
  if num.to_f.to_s == num
    return num.to_f
  else
    puts "Please enter a VALID number: "
    num = gets.chomp
    valid_number(num)
  end
end


puts "Welcome to our Calculator"

puts "Please enter the first number: "
num_1 = gets.chomp
num_1 = valid_number(num_1)
puts "Please enter the second number: "
num_2 = gets.chomp
num_2 = valid_number(num_2)

puts "What operation would you like to perform? You can choose Add, Subtract, Multipy, or Divide"
operation = gets.chomp

case operation
when 'multiply'
  puts "#{num_1} multiplied by #{num_2} is #{num_1 * num_2}"
when 'add'
  puts "#{num_1} added to #{num_2} is #{num_1 + num_2}"
when "subtract"
  puts "#{num_2} subtracted from #{num_1} is #{num_1 - num_2}"
when 'divide'
  if num_2 == 0 
    puts 'sorry you have chosen an invalid operation you cannot divide by zero. please try agin.'
  else
    puts "#{num_1} divided by #{num_2} is #{num_1 / num_2}" 
  end
else
  puts "Sorry you have entered an invalid opperation. Please tray again"
end

