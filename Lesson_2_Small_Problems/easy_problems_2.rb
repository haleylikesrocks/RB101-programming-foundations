# # How old is Teddy
# num = rand(20..200)
# puts "Please give me a name: "
# name = gets.chomp
# puts "#{name} is #{num} years old!"

# # How big is the
# puts 'Enter the length of the room in meters: '
# length = gets.chomp.to_f
# puts 'Enter the width of the room in meters: '
# width = gets.chomp.to_f
# puts "The area of the room is #{length * width} square meters (#{(length * width * 10.7639).round(2)} square feet)."

# # Tip Calulator
# puts 'What is the bill? '
# total = gets.chomp.to_f
# puts 'What is the tip percentage? '
# tip = gets.chomp.to_f * 0.01 * total
# total += tip
# puts "The tip is $#{tip.round(2)}"
# puts "The total is $#{total.round(2)}"

# # When will I Retire?
# puts "what is your age?"
# age = gets.chomp.to_i
# puts 'At what age would you like to retire? '
# retire = gets.chomp.to_i
# year = Time.now.year
# puts "It's #{year}. You will retire in #{year + retire - age}."
# puts "YOu have only #{retire - age} years of work to go!"

# # Greeting a user
# puts "What is your name? "
# name = gets.chomp
# puts name.end_with?("!")? "HELLO #{name.upcase} WHY ARE WE SCREAMING?": "Hello #{name}."

# # Odd Numbers
# rng = 1..99
# rng.each{|num| puts num if num % 2 == 1}

# # Even Numbers
# rng = 1..99
# rng.each{|num| puts num if num.even?}

# # Sum or Product of Consecutive Integers
# puts "Pleas enter an integer greater than 0: "
# num = gets.chomp.to_i
# puts "Enter 's' to compute the sum, 'p' to compute the product. "
# opp = gets.chomp.downcase
# rng = 1..num

# if opp == 's'
#   sum = 0
#   rng.each{|value| sum += value}
#   puts "The sum of the integers between 1 and #{num} is #{sum}."
# elsif opp = 'p'
#   product = 1
#   rng.each{|value| product *= value}
#   puts "The product of the integers between 1 and #{num} is #{product}."
# else
#   puts "Oops I don't recognize that input"
# end

# String Assignment
