# #### MEDIUM 2 PROBLEMS ####

# # 1 Longest Sentence

# def print_longest_sentence(text)
#   long_sentence = text.split(/\.|\?|!/ ).sort_by { |sentence| sentence.size}[-1]
#   print(long_sentence)
# end

# test_text = "Four score and seven years ago our fathers brought forth
# on this continent a new nation, conceived in liberty, and
# dedicated to the proposition that all men are created
# equal.

# Now we are engaged in a great civil war, testing whether
# that nation, or any nation so conceived and so dedicated,
# can long endure. We are met on a great battlefield of that
# war. We have come to dedicate a portion of that field, as
# a final resting place for those who here gave their lives
# that that nation might live. It is altogether fitting and
# proper that we should do this.

# But, in a larger sense, we can not dedicate, we can not
# consecrate, we can not hallow this ground. The brave
# men, living and dead, who struggled here, have
# consecrated it, far above our poor power to add or
# detract. The world will little note, nor long remember
# what we say here, but it can never forget what they
# did here. It is for us the living, rather, to be dedicated
# here to the unfinished work which they who fought
# here have thus far so nobly advanced. It is rather for
# us to be here dedicated to the great task remaining
# before us -- that from these honored dead we take
# increased devotion to that cause for which they gave
# the last full measure of devotion -- that we here highly
# resolve that these dead shall not have died in vain
# -- that this nation, under God, shall have a new birth
# of freedom -- and that government of the people, by
# the people, for the people, shall not perish from the
# earth."

# print_longest_sentence(test_text)

# # 2 Now I know my ABCs

# BLOCKS = [['B', 'O'], ['X', 'K'], ['D', 'Q'], ['C', 'P'], ['N', 'A'], ['G', 'T'], ['R', 'E'], ['F', 'S'], ['J', 'W'], ['H', 'U'], ['V', 'I'], ['L', 'Y'], ['Z', 'M']]

# def block_word?(word)
#   BLOCKS.each do |letter_pairs| 
#     if (word.upcase.include? letter_pairs[0]) && (word.upcase.include? letter_pairs[1])
#       return false
#     else 
#       return true
#     end 
#   end
#   # inclue_both = BLOCKS.any? {|letter_pairs| p word.upcase.include? (letter_pairs[0] && letter_pairs[1]) }
#   # !inclue_both
# end

# BLOCKS = %w(BO XK DQ CP NA GT RE FS JW HU VI LY ZM).freeze

# def block_word?(string)
#   up_string = string.upcase
#   BLOCKS.none? { |block| up_string.count(block) >= 2 }
# end

# p block_word?('BATCH') == true
# p block_word?('BUTCH') #== false
# p block_word?('jest') == true

# # 3  Lettercase Percentage Ratio

# CAPITALS = %w()
# LOWER = 

# def letter_case_count(string)
#   counter = { lowercase: 0, uppercase: 0, neither: 0 }
#   string.chars.each do |char|
#     ascii_val = char.ord
#     case ascii_val 
#     when 65..96 then counter[:uppercase] += 1
#     when 97..121 then counter[:lowercase] += 1
#     else counter[:neither] += 1
#     end
#   end
#   counter
# end

# def letter_percentages(text)
#   case_counts = letter_case_count(text)
#   sum_of_letters = case_counts.values.sum
#   percentages = {}
#   case_counts.each do |case_type, value|
#     percentages[case_type] = (value.to_f / sum_of_letters.to_f) * 100
#   end
#   percentages
# end

# p letter_percentages('abCdef 123') == { lowercase: 50, uppercase: 10, neither: 40 }
# p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
# p letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }

# # 4 Matching Parenthese?

# def balanced?(text)
#   parenthese_count = 0
#   text.chars.each do |letter|
#     parenthese_count += 1 if letter == '('
#     parenthese_count -= 1 if letter == ')'
#     return false if parenthese_count < 0
#   end
#   return true if parenthese_count == 0
#   false
# end

# p balanced?('What (is) this?') == true
# p balanced?('What is) this?') == false
# p balanced?('What (is this?') == false
# p balanced?('((What) (is this))?') == true
# p balanced?('((What)) (is this))?') == false
# p balanced?('Hey!') == true
# p balanced?(')Hey!(') == false
# p balanced?('What ((is))) up(') == false

# # 5 Triangle Sides

# def triangle(side_1, side_2, side_3)
#   p sides = [side_1, side_2, side_3].sort
#   if sides[0] <= 0 || (sides[2] > sides[1] + sides[0])
#     :invalid
#   elsif side_1 == side_2 && side_1 == side_3 
#     :equilateral
#   elsif sides[1] == sides[2] || sides[1] == sides[0]
#     :isosceles
#   else 
#     :scalene
#   end
# end

# p triangle(3, 3, 3) == :equilateral
# p triangle(3, 3, 1.5) == :isosceles
# p triangle(3, 4, 5) == :scalene
# p triangle(0, 3, 3) == :invalid
# p triangle(3, 1, 1) == :invalid

# # 6 Tri-Angles

# def triangle(angle_1, angle_2, angle_3)
#   angles = [angle_1, angle_2, angle_3].sort
#   if angles.sum != 180 || angles.include?(0)
#     :invalid
#   elsif angles[2] > 90
#     :obtuse
#   elsif angles[2] == 90
#     :right
#   else 
#     :acute
#   end
# end

# p triangle(60, 70, 50) == :acute
# p triangle(30, 90, 60) == :right
# p triangle(120, 50, 10) == :obtuse
# p triangle(0, 90, 90) == :invalid
# p triangle(50, 50, 50) == :invalid

# # 7 Unlucy days

# require 'date'

# def friday_13th(year)
#   unlucky_count = 0
#   thirteenth = Date.civil(year, 1, 13)
#   12.times do
#     unlucky_count += 1 if thirteenth.friday?
#     thirteenth = thirteenth.next_month
#   end
#   unlucky_count
# end

# p friday_13th(2015) == 3
# p friday_13th(1986) == 1
# p friday_13th(2019) == 2

# # 8 Next Featured Number Higher than a Given Value

# def feature?(num)
#   num % 7 == 0 && num.odd? && num.to_s.chars == num.to_s.chars.uniq
# end

# def featured(num)
#   return "Sry no number fist the requirements" if num >= 9_876_543_210
#   multiplier = num / 7
#   multiplier += 1
#   next_feature = multiplier * 7
#   until feature?(next_feature)
#     multiplier += 1
#     next_feature = multiplier * 7
#   end
#   return next_feature
# end

# p featured(12) == 21
# p featured(20) == 21
# p featured(21) == 35
# p featured(997) == 1029
# p featured(1029) == 1043
# p featured(999_999) == 1_023_547
# p featured(999_999_987) == 1_023_456_987

# p featured(9_999_999_999) # -> There is no possible number that fulfills those requirements

# # 9 Bubble Sort

def bubble_sort!(arr)
  loop do
    swap = false

    (1...arr.size).to_a.each do |index|
      next if arr[index] >= arr[index - 1]
      arr[index], arr[index - 1] = arr[index - 1], arr[index]
      swap = true
    end
    
    break unless swap
  end

  arr
end



array = [5, 3]
p bubble_sort!(array)
p array == [3, 5]

array = [6, 2, 7, 1, 4]
p bubble_sort!(array)
p array == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
p bubble_sort!(array)
p array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)

# # 10 Sum Square - Square Sum

# def sum_square_difference(num)
#   sum = 0
#   square_sum = 0
#   (1..num).each do |number|
#     sum += number
#     square_sum += number ** 2
#   end
#   sum **2 - square_sum
# end

# p sum_square_difference(3) == 22
# # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
# p sum_square_difference(10) == 2640
# p sum_square_difference(1) == 0
# p sum_square_difference(100) == 25164150

