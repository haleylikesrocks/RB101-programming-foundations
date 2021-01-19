# 1 Combine Two Lists #
def interleave(list_1, list_2)
  woven_list = []
  list_1.each_with_index{ |element, index| woven_list << [element, list_2[index]]}
  woven_list.flatten
end

p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']

# 2 Lettercase Counter #

def letter_case_count(string)
  counter = { lowercase: 0, uppercase: 0, neither: 0 }
  string.chars.each do |char|
    ascii_val = char.ord
    case ascii_val 
    when 65..96 then counter[:uppercase] += 1
    when 97..121 then counter[:lowercase] += 1
    else counter[:neither] += 1
    end
  end
  counter
end

p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }

# 3 Capitalize words #

def word_cap(sentence)
  caps_sentence = []
  sentence.split.each{ |word| caps_sentence << word.capitalize}
  caps_sentence.join " "
end

p word_cap('four score and seven') == 'Four Score And Seven'
p word_cap('the javaScript language') == 'The Javascript Language'
p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'

# 4 Swap Case

def swapcase(string)
  case_swaped= []
  string.chars.each do |letter|
    ascii_val = letter.ord
    case ascii_val 
    when 65..96 then case_swaped << letter.downcase 
    when 97..121 then case_swaped << letter.upcase! 
    else case_swaped << letter
    end
  end
  case_swaped.join
end

p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'

# 5 Staggered Case part 1

def staggered_case(sentence)
  sentence.chars.map.with_index { |character, index| index % 2 == 0 ? character.upcase : character.downcase }.join
end

p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'

# 6 Staggered Case part 3

def staggered_case(sentence)
  letter_counter = 1
  swapped = sentence.chars.map do |character| 
    letter_counter += 1 if character.downcase =~ /[a-z]/
    letter_counter % 2 == 0 ? character.upcase : character.downcase
  end
  swapped.join
end

p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'


# 7 Multiplicative Average

def show_multiplicative_average(num_arr)
  mult_total = 1
  num_arr.each do |num|
     mult_total = mult_total * num
  end 
  "#{ '%.3f' % (mult_total / num_arr.size.to_f)}"
end

p show_multiplicative_average([3, 5])                # => The result is 7.500
p show_multiplicative_average([6])                   # => The result is 6.000
p show_multiplicative_average([2, 5, 7, 11, 13, 17]) # => The result is 28361.667

# 8 Multiply Lists 

def multiply_list(list_1, list_2)
  multiplied_list = []
  list_1.each_index { |indx| multiplied_list << list_1[indx] * list_2[indx] }
  multiplied_list
end

p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]

# 9 Multiply All Pairs

def multiply_all_pairs(list_1, list_2)
  multiplied_list = []
  list_1.each do |num_1| 
    list_2.each do |num_2| 
      multiplied_list << num_1 * num_2
    end
  end
  multiplied_list.sort
end

p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]

# 10 The End Is Near But Not Here

def penultimate(sentence)
  sentence.split[-2]
end

p penultimate('last word') == 'last'
p penultimate('Launch School is great!') == 'is'