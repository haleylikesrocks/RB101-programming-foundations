# Question 1
10.times{|count| puts "The Flinstones Rock!".prepend(" " * (count))}

# QUestion 2
# error of puts "the value of 40 + 2 is " + (40 + 2)
puts "the value of 40 + 2 is " + (40 + 2).to_s
puts "the value of 40 + 2 is #{40 + 2}"

# question 3

def factors(number)
  if number <=0
    puts "Oops, please pick a posivite integer!"
    return
  divisor = number
  factors = []
  while divisor > 0 do
    factors << number / divisor if number % divisor == 0
    divisor -= 1
  end
  factors
end

# Question 5

def fib(first_num, second_num, limit)
  while first_num + second_num < limit
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end

result = fib(0, 1, 15)
puts "result is #{result}"