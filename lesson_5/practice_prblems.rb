# PRACTICE PROBLEMS FROM LESSSON 5.5 OF LAUNCH CODE'S RUBY 101 COURSE

#QUESTION 1:How would you order this array of number strings by descending numeric value?

arr = ['10', '11', '9', '7', '8']
arr.sort_by{|num| num.to_i}.reverse

# QUESTION 2: How would you order this array of hashes based on the year of publication of each book, from the earliest to the latest?

books = [
  {title: 'One Hundred Years of Solitude', author: 'Gabriel Garcia Marquez', published: '1967'},
  {title: 'The Great Gatsby', author: 'F. Scott Fitzgerald', published: '1925'},
  {title: 'War and Peace', author: 'Leo Tolstoy', published: '1869'},
  {title: 'Ulysses', author: 'James Joyce', published: '1922'}
]
books.sort_by{|hash| hash[:published]} # don't need to_i becaus ethe year is always 4 characters long

# QUESTION 3: For each of these collection objects demonstrate how you would reference the letter 'g'.

arr1 = ['a', 'b', ['c', ['d', 'e', 'f', 'g']]]
arr1[2][1][3]

arr2 = [{first: ['a', 'b', 'c'], second: ['d', 'e', 'f']}, {third: ['g', 'h', 'i']}]
arr2[1][:third][0]

arr3 = [['abc'], ['def'], {third: ['ghi']}]
arr3[2][:third][0][0]

hsh1 = {'a' => ['d', 'e'], 'b' => ['f', 'g'], 'c' => ['h', 'i']}
hsh1['b'][1]

hsh2 = {first: {'d' => 3}, second: {'e' => 2, 'f' => 1}, third: {'g' => 0}}
hsh2[:third].key(0)

# QUESTION 4: For each of these collection objects where the value 3 occurs, demonstrate how you would change this to 4.

arr1 = [1, [2, 3], 4]
arr1[1][1] = 4

arr2 = [{a: 1}, {b: 2, c: [7, 6, 5], d: 4}, 3]
arr2[-1] = 4

hsh1 = {first: [1, 2, [3]]}
hsh1[:first][2][0] = 4

hsh2 = {['a'] => {a: ['1', :two, 3], b: 4}, 'b' => 5}
hsh2[['a']][:a][2] = 4

# QUESTION 5: figure out the total age of just the male members of the family.

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}
sum_of_age = 0
munsters.each{|munster| sum_of_age += munster[1]['age'] if munster[1]['gender'] == 'male'}
p sum_of_age

#should have used each value -- that's why oit was acting strange 

# QUESTION 6:Given this previously seen family hash, print out the name, age and gender of each family member:

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

munsters.each do |name, deets|
  puts "#{name} is a #{deets['age']} year old #{deets['gender']}."
end

# QUESTION 7: Given this code, what would be the final values of a and b? Try to work this out without running the code.

a = 2
b = [5, 8]
arr = [a, b]

arr[0] += 2
arr[1][0] -= a
# a = 4  b = [1, 8] <- b should have been [3, 8] and a shuold have been 2
p a 
p b

# QUESTION 8: Using the each method, write some code to output all of the vowels from the strings.

hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}

VOWLES = %w(a e i o u)
vowels_in_strings = ''

hsh.each_value.each do |arr|
  arr.each do |word|
    word.chars.each do |letter|
      vowels_in_strings << letter if VOWLES.include?(letter)
    end
  end
end

puts vowels_in_strings

# QUESTION 9: Given this data structure, return a new array of the same structure but with the sub arrays being ordered (alphabetically or numerically as appropriate) in descending order.

arr = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]

arr.map do |sub_arr|
  sub_arr.sort.reverse
end

# QUESTION 10: return a new array identical in structure to the original but where the value of each integer is incremented by 1.

arr = [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}]

arr.map do |hash|
  hash.each do |key, value|
    hash[key] = value + 1
  end
end

# QUESTION 11: return a new array identical in structure to the original but containing only the integers that are multiples of 3

arr = [[2], [3, 5, 7], [9], [11, 13, 15]]

arr.map do |sub_arr|
  sub_arr.select do |value|
    value % 3 == 0
  end
end

# QUESTION 12: write some code that will return a hash where the key is the first item in each sub array and the value is the second item.

arr = [[:a, 1], ['b', 'two'], ['sea', {c: 3}], [{a: 1, b: 2, c: 3, d: 4}, 'D']]
hsh = {}
arr.each do |sub_arr|
  hsh[sub_arr[0]] = sub_arr[1]
end
p hsh
# expected return value: {:a=>1, "b"=>"two", "sea"=>{:c=>3}, {:a=>1, :b=>2, :c=>3, :d=>4}=>"D"}

# QUESTION 13: return a new array containing the same sub-arrays as the original but ordered logically by only taking into consideration the odd numbers they contain

arr = [[1, 6, 7], [1, 4, 9], [1, 8, 3]]

arr.map.sort_by do |sub_arr|
  sub_arr.select{|value| value.odd?}
end

# QUESTION 14: return an array containing the colors of the fruits and the sizes of the vegetables. The sizes should be uppercase and the colors should be capitalized

hsh = {
  'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
  'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
  'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
  'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
  'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
}

output = []

hsh.each_value do |details|
  output << details[:colors].map{ |fruit| fruit.capitalize }if details[:type] == 'fruit'
  output << details[:size].upcase if details[:type] == 'vegetable'
end

p output

# QUESTION 15: write some code to return an array which contains only the hashes where all the integers are even.

arr = [{a: [1, 2, 3]}, {b: [2, 4, 6], c: [3, 6], d: [4]}, {e: [8], f: [6, 10]}]

output = arr.select do |hash|
  hash.values.all? do |sub_arr|
    sub_arr.all?{|num| num.even?}
  end
end

p output

# QUESTION 16: Write a method that returns one UUID when called with no parameters.

CHARACTERS = %w(0 1 2 3 4 5 6 7 8 9 a b c d e f g h i j k l m n o p q r s t u v w x y z)

def uuid 
  CHARACTERS.sample(8).join + '-' + CHARACTERS.sample(4).join + '-' + CHARACTERS.sample(4).join + '-' + CHARACTERS.sample(4).join + '-' + CHARACTERS.sample(12).join
end

p uuid