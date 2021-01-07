### LAUNCH SCHOOL SMALL PROBLEMS RB101-RB109 ####

# 1 SEARCHING 101 #

usr_numbers = []

def valid_integer?(num)
  num.to_i.to_s == num
end

def get_numbers(usr_numbers)
  counter = 1
  loop do 
    puts "==> Enter the #{counter}th number: "
    num = gets.chomp
    if valid_integer?(num)
      usr_numbers << num.to_i
    end
    counter += 1
    break if counter >= 7
  end
end

get_numbers(usr_numbers)

search_num = usr_numbers.pop

puts usr_numbers.include?(search_num)? "The number #{search_num} does appear in #{usr_numbers}." :  "The number #{search_num} does not appear in #{usr_numbers}."

2 ARITHMETIC INTEGER #

def prompt(string)
  puts "==> #{string}"
end

prompt 'Enter the first number: '
first = gets.chomp.to_i
prompt 'Enter the second number: '
second = gets.chomp.to_i

prompt "#{first} + #{second} = #{first + second}"
prompt "#{first} - #{second} = #{first - second}"
prompt "#{first} * #{second} = #{first * second}"
prompt "#{first} / #{second} = #{first / second}"
prompt "#{first} % #{second} = #{first % second}"
prompt "#{first} ** #{second} = #{first ** second}"

# 3 COUNTING THE NUMBER OF CHARACTERS #

prompt 'Please write word or multiple words: '
usr_phrase = gets.chomp
length_of_string = usr_phrase.delete(' ').size
prompt "There are #{length_of_string} characters in #{usr_phrase}"

# 4 MULTIPLYING TWO NUMBERS #

def multiply(num_1, num_2)
  num_1 * num_2
end

# 5 SQUARING AN ARGUMENT #

def square(num_1)
  multiply(num_1, num_1)
end

6 EXCLUSIVE OR #

def xor?(cond_1, cond_2)
  (!cond_1 && cond_2) || (!cond_2 && cond_1)
end

p xor?(5.even?, 4.even?) == true
p xor?(5.odd?, 4.odd?) == true
p xor?(5.odd?, 4.even?) == false
p xor?(5.even?, 4.odd?) == false

# 7 ODD LISTS #

def oddities(arr)
  odd_arr = []
  arr.each_with_index{|value, index| odd_arr << value if index % 2 == 0}
  odd_arr
end

p oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
p oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
p oddities(['abc', 'def']) == ['abc']
p oddities([123]) == [123]
p oddities([]) == []

# 8 PALINDROMIC STRINGS (PART 1) #

def palindrome?(string)
  string == string.reverse
end

p palindrome?('madam') == true
p palindrome?('Madam') == false          # (case matters)
p palindrome?("madam i'm adam") == false # (all characters matter)
p palindrome?('356653') == true

9 PALINDROMIC STRINGS (PART 2) #

def real_palindrome?(string)
  string.downcase!
  letters = %w(a b c d e f g h i j k l m n o p q r s t u v w x y z)
  letter_string = string.chars.select{ |char| letters.include?(char) }.join
  palindrome?(letter_string)
end

p real_palindrome?('madam') == true
p real_palindrome?('Madam') == true           # (case does not matter)
p real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
p real_palindrome?('356653') == true
p real_palindrome?('356a653') == true
p  real_palindrome?('123ab321') == false

# 10 PALINDROMIC NUMBERS #

def palindromic_number?(num)
  palindrome?(num.to_s)
end

p palindromic_number?(34543) == true
p palindromic_number?(123210) == false
p palindromic_number?(22) == true
p palindromic_number?(5) == true
