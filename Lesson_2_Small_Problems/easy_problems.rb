# Repeater yourself
def repeat (str, num)
  num.times{ puts str}
end

repeat('Hello', 3)

# Odd
def is_odd?(num)
  num % 2 == 1
end

puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false
puts is_odd?(0)    # => false
puts is_odd?(7)    # => true

# List of Digits
def digit_list(num)
  str = num.to_s
  nums = str.split(//)
  nums.map{|char| char.to_i}
end
#better answer
def digit_list(number)
  number.to_s.chars.map(&:to_i)
end


puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list(7) == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4]             # => true

# How Many?
def count_occurrences(list)
  keys = list.uniq
  count = keys.map{ |key| list.count(key) }
  keys.each_index{ |indx| puts "#{keys[indx]} => #{count[indx]}"}
end

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

count_occurrences(vehicles)

# Reverse It part 1
def reverse_sentence(sentence)
  return '' if sentence == ''
  list = sentence.split(' ').reverse
  str = '' 
  list.each{|word| str << word + " "}
  str.strip!
end

# better answers
def reverse_sentence(string)
  string.split.reverse.join(' ')
end

puts reverse_sentence('') == ''
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'

# Reversi it part 2
def reverse_words(sentence)
  arr = []
  sentence.split(' ').each do |word| 
    if word.length >= 5
      arr << word.split(//).reverse!.join
    else 
      arr << word
    end 
  end
  arr.join(" ")
end

# better answer
def reverse_words(string)
  words = []

  string.split.each do |word|
    word.reverse! if word.size >= 5
    words << word
  end

  words.join(' ')
end

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS

# Stringy Strings
def stringy(num)
  str = ''
  num.times do |indx|
    indx % 2 == 0 ? str += '1' : str += '0'
  end
  return str
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'

# Array Average
def average(ary)
  ary.sum / ary.length
end

puts average([1, 6]) == 3 # integer division: (1 + 6) / 2 -> 3
puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40

# Sum of DIgits
def sum(num)
  sum = 0
  num.to_s.chars.each{|char| sum += char.to_i } #(&:to_i).reduce(:+)
  sum
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45

#whats my bounus
def calculate_bonus(salary, bool)
  bonus = 0
  bonus = salary / 2 if bool
  return bonus
  #better
  # bool? (salary / 2) : 0
end

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000