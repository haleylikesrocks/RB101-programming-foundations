# 1 Rotation (Part 1)

def rotate_array(arr)
  arr[1..] + [arr[0]]
end

p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
p rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
p rotate_array(x) == [2, 3, 4, 1]   # => true
p x == [1, 2, 3, 4]                 # => true

# 2 Rotation (Part 2)

def rotate_rightmost_digits(number, digit)
  num_arr = number.to_s.chars
  rotated = num_arr[..-(digit + 1)] + rotate_array(num_arr[-digit..])
  rotated.join.to_i
end

p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917

# 3 Rotation (Part 3)

def max_rotation(number)
  while count > 0
    number = rotate_rightmost_digits(number, count)
    count -= 1
  end
  number
end

p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845

# 4 1000 Lights

def turn_off_lights(n)
  lights = (1..n)
  lights = lights.map{ |light| light * -1}
  n.times do |time|
    lights =lights.map{ |light| light % (time + 1) == 0 ? light * -1 : light}
  end
  lights.select{ |light| light > 0}
end

p turn_off_lights(5) == [1, 4]
p turn_off_lights(10) == [1, 4, 9]
p turn_off_lights(1) == [1]

# 5 Daimonds!

def diamond(n)
  half = n/2
  stars = 1
  spaces = n/2
  half.times do
    puts " " * spaces + '*' * stars
    spaces -= 1
    stars += 2
  end

  puts '*' * n

  spaces = 1
  stars = n - 2
  half.times do
    puts " " * spaces + '*' * stars
    stars -= 2
    spaces += 1
  end 
end

diamond(1)
diamond(3)
diamond(9)

# 6 Stack Machine Interp

def minilang(string)
  register = 0
  stack = []
  orders = string.split
  orders.each do |item|
    case item
    when 'PUSH' then stack << register
    when 'ADD' then register = register + stack.pop
    when 'SUB' then register = register - stack.pop
    when 'MULT' then register = register * stack.pop
    when 'DIV' then register = register / stack.pop
    when 'MOD' then register = register % stack.pop
    when 'POP' then register = stack.pop
    when 'PRINT' then puts register
    else 
      register = item.to_i
    end
  end
end

minilang('PRINT')
# 0

minilang('5 PUSH 3 MULT PRINT')
# 15

minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
# 5
# 3
# 8

minilang('5 PUSH POP PRINT')
# 5

minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
# 5
# 10
# 4
# 7

minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
# 6

minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
# 12

minilang('-3 PUSH 5 SUB PRINT')
# 8

minilang('6 PUSH')
# (nothing printed; no PRINT commands)

# 7 Word to Digit

def word_to_digit(string)
  nums = {'one' => '1', 'two' => '2', 'three' => '3', 'four*' => '4', 'five' => '5', 'six' => '6', 'seven' => '7', 'eight' => '8', 'nine' => '9', 'zero' => '0'}
  nums.keys.each do |num|
    string.gsub!(/\b#{num}\b/, nums[num])
  end
  string
end

p word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'

# 8 Fibbonacci Numbers (Recursion)

def fibonacci(n)
  return 1 if n <= 2
  fibonacci(n-1) + fibonacci(n-2)
end

p fibonacci(1) == 1
p fibonacci(2) == 1
p fibonacci(3) == 2
p fibonacci(4) == 3
p fibonacci(5) == 5
p fibonacci(12) == 144
p fibonacci(20) == 6765

# 9 Fibonacci Numbers (Procedural)

def fibonacci(n)
  counter = 2
  num1 = 1
  num2 = 1
  while counter < n
    counter += 1
    fib = num2 + num1
    num1 = num2
    num2 = fib
  end
  fib
end

p fibonacci(20) == 6765
p fibonacci(100) == 354224848179261915075
p fibonacci(100_001) # => 4202692702.....8285979669707537501

# 10 Fibonacci Numbers (Last Digit)

def fibonacci_last(nth)
  fib_num = fibonacci(nth)
  fib_num.to_s[-1].to_i
end

p fibonacci_last(15)        # -> 0  (the 15th Fibonacci number is 610)
p fibonacci_last(20)        # -> 5 (the 20th Fibonacci number is 6765)
p fibonacci_last(100)       # -> 5 (the 100th Fibonacci number is 354224848179261915075)
p fibonacci_last(100_001)   # -> 1 (this is a 20899 digit number)
p fibonacci_last(1_000_007) # -> 3 (this is a 208989 digit number)
p fibonacci_last(123456789) # -> 4