# 1 CUTE ANGLES #

DEGREE = "\xC2\xB0"

def dms(number)
  decimal = number.to_f % 1
  min = decimal * 60
  sec = (min % 1 * 60).round
  puts "#{number.to_i}" + DEGREE + "#{"%02d" % min.round}'#{"%02d" % sec}\""
end

p dms(30) == %(30°00'00")
p dms(76.73) == %(76°43'48")
p dms(254.6) == %(254°36'00")
p dms(93.034773) == %(93°02'05")
p dms(0) == %(0°00'00")
p dms(360) == %(360°00'00") || dms(360) == %(0°00'00")

# 2 DELETE VOWLES #

def remove_vowels(arr_orignal)
  vowels = 'aeiouAEIOU'
  arr_orignal.map do |word|
    word.delete(vowels)
  end
end

p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']

3 FIBONACCI NUMBER LOCATION BY LENGTH #

def find_fibonacci_index_by_length(num)
  fib_arr = [1, 1]
  index = 1
  until fib_arr[index].to_s.size == num
    fib_arr << fib_arr[index] + fib_arr[index-1]
    index += 1
  end
  index + 1
end

p find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
p find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
p find_fibonacci_index_by_length(10) == 45
p find_fibonacci_index_by_length(100) == 476
p find_fibonacci_index_by_length(1000) == 4782
p find_fibonacci_index_by_length(10000) == 47847

# 4 REVERSED ARRAYS (PART 1) #

def reverse!(arr)
  arr_orignal = arr.map{ |element| element }
  index = 0
  loop do
    break if index == arr.size
    arr[index] = arr_orignal[-(index+1)]
    index +=1
  end
  arr
end

p list = [1,2,3,4]
p result = reverse!(list)
p result == [4, 3, 2, 1] # true
p list == [4, 3, 2, 1] # true
p list.object_id == result.object_id # true

p list = %w(a b e d c)
p reverse!(list) == ["c", "d", "e", "b", "a"] # true
p list == ["c", "d", "e", "b", "a"] # true

p list = ['abc']
p reverse!(list) == ["abc"] # true
p list == ["abc"] # true

p list = []
p reverse!(list) == [] # true
p list == [] # true

# 5 REVERSED ARRAYS (PART 2) #

def reverse(arr)
  new_arr = []
  arr.each do |element|
    new_arr.prepend(element)
  end
  new_arr
end

p reverse([1,2,3,4]) == [4,3,2,1]          # => true
p reverse(%w(a b e d c)) == %w(c d e b a)  # => true
p reverse(['abc']) == ['abc']              # => true
p reverse([]) == []                        # => true

p list = [1, 3, 2]                      # => [1, 3, 2]
p new_list = reverse(list)              # => [2, 3, 1]
p list.object_id != new_list.object_id  # => true
p list == [1, 3, 2]                     # => true
p new_list == [2, 3, 1]                 # => true

# 6 COMBINING ARRAYS #

def merge(arr_1, arr_2)
  (arr_1 + arr_2).uniq
end

p merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]

# 7 HALVIES #

def halvsies(arr)
  half = arr.size / 2
  return [arr[0..half], arr[(half + 1)..]] if arr.size % 2 == 1
  return [arr[0..(half-1)], arr[(half)..]] if arr.size % 2 == 0
end

p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]

# 8 FIND THE DUPLICATE #

def find_dup(arr)
  arr.find { |element| arr.count(element) == 2 }
end

p find_dup([1, 5, 3, 1]) == 1
p find_dup([18,  9, 36, 96, 31, 19, 54, 75, 42, 15,
          38, 25, 97, 92, 46, 69, 91, 59, 53, 27,
          14, 61, 90, 81,  8, 63, 95, 99, 30, 65,
          78, 76, 48, 16, 93, 77, 52, 49, 37, 29,
          89, 10, 84,  1, 47, 68, 12, 33, 86, 60,
          41, 44, 83, 35, 94, 73, 98,  3, 64, 82,
          55, 79, 80, 21, 39, 72, 13, 50,  6, 70,
          85, 87, 51, 17, 66, 20, 28, 26,  2, 22,
          40, 23, 71, 62, 73, 32, 43, 24,  4, 56,
          7,  34, 57, 74, 45, 11, 88, 67,  5, 58]) == 73

# 9 DOES MY LIST INCLUE THIS? #

def include?(arr, num)
  arr.each{ |element| return true if element == num}
  return false
end

p include?([1,2,3,4,5], 3) == true
p include?([1,2,3,4,5], 6) == false
p include?([], 3) == false
p include?([nil], nil) == true
p include?([], nil) == false

# 10 RIGHT TRIANGLES #

def triangle(num)
  stars = 1
  spaces = num - stars
  num.times do 
    puts (' ' * spaces) + ('*' * stars)
    spaces -= 1
    stars += 1
  end 
end

triangle(5)
triangle(9)

