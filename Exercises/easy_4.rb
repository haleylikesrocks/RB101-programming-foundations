# 1: SHORT LONG SHORT #

def short_long_short(string_1, string_2)
  if string_1.size <= string_2.size
    return string_1 + string_2 +string_1
  else
    return string_2 + string_1 +string_2
  end
end

p short_long_short('abc', 'defgh') == "abcdefghabc"
p short_long_short('abcde', 'fgh') == "fghabcdefgh"
p short_long_short('', 'xyz') == "xyz"

# 2: WHAT CENTURY IS THAT? #

def century(year)
  century = (year + 99).to_s[0..-3]
  if century[-1] == '1' && century[-2..-1] != '11'
    output = century + 'st'
  elsif century == '3'
    output = century + 'rd'
  elsif century == '2' || century[-2..-1] == '02'
    output = century + 'nd'
  else
    output = century + 'th'
  end
  output
end

p century(2000) == '20th'
p century(2001) == '21st'
p century(1965) == '20th'
p century(256) == '3rd'
p century(5) == '1st'
p century(10103) == '102nd'
p century(1052) == '11th'
p century(1127) == '12th'
p century(11201) == '113th'

# 3: LEAP YEARS (PART 1) #

def leap_year?(year)
  return year % 4 == 0 unless year % 100 == 0
  year % 400 == 0
end

p leap_year?(2016) == true
p leap_year?(2015) == false
p leap_year?(2100) == false
p leap_year?(2400) == true
p leap_year?(240000) == true
p leap_year?(240001) == false
p leap_year?(2000) == true
p leap_year?(1900) == false
p leap_year?(1752) == true
p leap_year?(1700) == false
p leap_year?(1) == false
p leap_year?(100) == false
p leap_year?(400) == true

# 4: LEAP YEARS (PART 2) #

def leap_year?(year)
  if year > 1752
    return year % 4 == 0 unless year % 100 == 0
    return year % 400 == 0
  else
    return year % 4 ==0
  end
end

p leap_year?(2016) == true
p leap_year?(2015) == false
p leap_year?(2100) == false
p leap_year?(2400) == true
p leap_year?(240000) == true
p leap_year?(240001) == false
p leap_year?(2000) == true
p leap_year?(1900) == false
p leap_year?(1752) == true
p leap_year?(1700) == true
p leap_year?(1) == false
p leap_year?(100) == true
p leap_year?(400) == true

# 5: MULTIPLES OF 3 AND 5 #

def multisum(num)
  [*1..num].select{|num| num % 3 == 0 || num % 5 == 0}.sum
end

p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234168

# 6: RUNNING TOTALS #

def running_total(arr)
  sum = 0 
  arr.map{|num| sum += num}
end

p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []

# 7: CONVERT A STRING TO A NUMBER! #

NUMBERS = {'1' => 1, '2' => 2, '3' => 3, '4' => 4, '5' => 5, '6' => 6, '7'=> 7, '8' => 8, '9' => 9, '0' => 0}

def string_to_integer(string)
  digits = string.chars.map{|char| NUMBERS[char]}.reverse

  number = 0
  digits.each_with_index{|num, index| number += num * 10 ** (index - 1)}
  number * 10
end

p string_to_integer('4321') == 4321
p string_to_integer('570') == 570

# 8: COVERT A STRING TO A SIGNED NUMBER! #

DIGITS = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9
}

def string_to_integer(string)
  digits = string.chars.map { |char| DIGITS[char] }
  
  value = 0
  digits.each { |digit| value = 10 * value + digit }
  value
end

def string_to_signed_integer(string)
  if string[0] == '-'
    result = string_to_integer(string[1..]) * -1
  elsif string[0] == '+'
    result = string_to_integer(string[1..])
  else
    result = string_to_integer(string)
  end
end

p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100

# 9: CONVERT A NUMBER TO A STRING! #

CHARACTERS = {
  0 => '0', 1 => '1', 2 => '2', 3 => '3', 4 => '4',
  5 => '5', 6 => '6', 7 => '7', 8 => '8', 9 => '9'
}

def integer_to_string(num)
  dig = []
  return '0' if num == 0

  until num < 1
    dig << num % 10
    num = num / 10
  end
  dig.map{|digit| CHARACTERS[digit]}.reverse.join
  dig.map{|digit| CHARACTERS[digit]}.reverse.join
end

p integer_to_string(4321) == '4321'
p integer_to_string(0) == '0'
p integer_to_string(5000) == '5000'

# 10: CONVERT A SIGNED NUMBR TO A STRING #

def signed_integer_to_string(num)
  if num > 0
    '+' + integer_to_string(num)
  elsif num < 0
    '-' + integer_to_string(num * -1)
  else 
    '0'
  end
end

p signed_integer_to_string(4321) == '+4321'
p signed_integer_to_string(-123) == '-123'
p signed_integer_to_string(0) == '0'