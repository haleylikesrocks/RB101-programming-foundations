

# 2 AFTER MIDNIHGT (PART 1) #

def time_of_day(min)
  min = min % 1440

  return '00:00' if min == 0

  hour = format('%02d', min / 60)
  minutes_left = format('%02d', min % 60)

  case min <=> 0
  when +1 then "#{hour}:#{minutes_left}"
  when -1 then "#{24 - hour}:#{60 - minutes_left}"
  end
end

p time_of_day(0) == "00:00"
p time_of_day(-3) == "23:57"
p time_of_day(35) == "00:35"
p time_of_day(-1437) == "00:03"
p time_of_day(3000) == "02:00"
p time_of_day(800) == "13:20"
p time_of_day(-4231) == "01:29"

# 3 AFTER MIDNIGHT (PART 2) #

def after_midnight(time)
  (time[0..1].to_i * 60 + time[-2..-1].to_i) % 1440
end

def before_midnight(time)
  (1440 -( time[0..1].to_i * 60 + time[-2..-1].to_i)) % 1440
end

p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0

# 4 LETTER SWAP #

def swap(sentence)
  words = sentence.split
  new_sentence = words.map do |word|
    first_letter = word[0] ## could also use a, b = b, a
    word[0] = word[-1]
    word[-1] = first_letter
    word
  end
  new_sentence.join(' ')
end

p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'

# # 5 CLEAN UP THE WORDS #

def remove_spaces(sentence)
  cleaner_sentence = sentence.split.join(' ')
  cleaner_sentence.prepend(' ') if sentence[0] == ' '
  cleaner_sentence << ' ' if sentence[-1] == ' '
end

def cleanup(string)
  string.gsub!(/\W/,' ')
  remove_spaces(string)
end

p cleanup("---what's my +*& line?") == ' what s my line '

# 6 LETTER COUNTER (PART 1) #

def word_sizes(sentence)
  return {} if sentence == ''
  words = sentence.split
  word_lengths = words.map{|word| word.size}.uniq.sort 
  hash_ouput = word_lengths.each_with_object(0).to_h
  words.each do |word|
    hash_ouput[word.size] = hash_ouput[word.size] + 1
  end
  hash_ouput
end

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('') == {}

# 7 LETTER COUNTER (PART 2) #

def word_sizes(sentence)
  return {} if sentence == ''
  words = sentence.split
  word_lengths = words.map{|word| word.gsub(/\W/,'').size}.uniq.sort 
  hash_ouput = word_lengths.each_with_object(0).to_h
  words.each do |word|
    hash_ouput[word.gsub(/\W/,'').size] = hash_ouput[word.gsub(/\W/,'').size] + 1
  end
  hash_ouput
end

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
p word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
p word_sizes('') == {}

# 8 ALPHABETICAL NUMBERS #

NUMBER_WORDS = %w(zero one two three four
                  five six seven eight nine
                  ten eleven twelve thirteen fourteen
                  fifteen sixteen seventeen eighteen nineteen)

def alphabetic_number_sort(numbers)
  numbers.sort_by { |number| NUMBER_WORDS[number] }
end

p alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]

# 9  DDAAIILLYY DDOOUBBLLEE #

def crunch(string)
  return '' if string == ''
  crunched_string = string[0]
  string.chars.each_with_index do |char, index|
    if char == string[index - 1] || index == 0
      next
    else
      crunched_string << char
    end
  end
  crunched_string
end

p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''

# 10 BANNERIZER #

def print_in_box(text)
  horizontal_rule = "+#{'-' * (message.size + 2)}+"
  empty_line = "|#{' ' * (message.size + 2)}|"
 
  puts horizontal_rule
  puts empty_line
  puts "| #{message} |"
  puts empty_line
  puts horizontal_rule
end

print_in_box('To boldly go where no one has gone before.')
print_in_box('')

# 11 SPIN ME AROUND IN CIRCLES #

#different because we made a new object when we split it (also probs when we joined it) 