# 1 Sum of sums

def sum_of_sums(arr)
  sum = arr[0]
  counter = 1
  while counter < arr.size
    sum += arr[0..counter].sum
    counter += 1
  end
  sum
end

p sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
p sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
p sum_of_sums([4]) == 4
p sum_of_sums([1, 2, 3, 4, 5]) == 35

# 2 Madlibs

def prompt(string)
  puts "==> #{string}"
end

prompt "Enter a noun: "
noun = gets.chomp
prompt "Enter a verb: "
verb = gets.chomp
prompt "Enter an adjective: "
adjective = gets.chomp
prompt "Enter an adverb: "
adverb = gets.chomp

sentence_1 = "Do you #{verb} your #{adjective} #{noun} #{adverb}? That's hilarious!"
sentence_2 = "The #{adjective} #{noun} #{verb}s #{adverb} over the lazy dog."
sentence_3 = "The #{noun} #{adverb} #{verb}s up #{adjective} Joe's turtle."

prompt [sentence_1, sentence_2, sentence_3].sample

# 3 Leadign Substring

def leading_substrings(string)
  substrings = [string[0]]
  counter = 1
  while counter < string.size
    substrings << string[0..counter]
    counter += 1
  end
  substrings
end

p leading_substrings('abc') == ['a', 'ab', 'abc']
p leading_substrings('a') == ['a']
p leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']

# 4 All Substrings

def substrings(string)
  start_index = 0
  substrings = []
  while start_index < string.size
    substrings << leading_substrings(string[start_index..])
    start_index += 1
  end
  substrings.flatten
end

p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]

# 5 Palindromic Substrings

def palindromes(string)
  substrings(string).select{ |substr| substr == substr.reverse && substr.size > 1 }
end

p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
p palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]

# 6 fizzbuzz

def fizzbuzz(start, last)
  (start..last).to_a.each do |num|
    if num % 3 == 0 && num % 5 == 0
      p "FizzBuzz"
    elsif num % 3 == 0
      p "Fizz"
    elsif num % 5 == 0
      p "Buzz"
    else
      p num
    end
  end
end

fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz

# 7 Double Char (Part 1)

def repeater(string)
  string.chars.map{ |char| char * 2 }.join
end

p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''

# 8 Double Char (Part 2)

def double_consonants(string)
  consonants = %(bcdfghjklmnpqrstvwxyz)
  string.chars.map{ |char| consonants.include?(char.downcase)? char * 2 : char}.join
end

p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""

# 9 Reverse the Digits In a Number

def reversed_number(num)
  num.to_s.reverse.to_i
end

p reversed_number(12345) == 54321
p reversed_number(12213) == 31221
p reversed_number(456) == 654
p reversed_number(12000) == 21 # No leading zeros in return value!
p reversed_number(12003) == 30021
p reversed_number(1) == 1

# 10 Get the Middle Character

def center_of(string)
  middle = string.size / 2
  return string[middle] if string.size % 2 == 1
  string[middle - 1..middle] if string.size % 2 == 0
end


p center_of('I love ruby') == 'e'
p center_of('Launch School') == ' '
p center_of('Launch') == 'un'
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'