# Problem 1 #

flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

flint_hash = {}
flintstones.each_with_index{ |name, index| flint_hash[name] = index }
puts flint_hash

# Problem 2 #

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

sum_of_ages = 0
ages.values.each { |value| sum_of_ages += value }
puts sum_of_ages

# Problem 3 #

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

ages.reject{ |name, age| age > 100 }

# Problem 4 #

puts ages.values.min

# Problem 5 #

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

puts flintstones.find_index{ |name| name[0,2] == "Be" }

# Problem 6 #

short_flint = flintstones.map{ |name| name[0, 3] }
puts short_flint

# Problem 7 #

statement = "The Flintstones Rock"
letter_count = {}
letters = statement.chars.uniq
letters.each do |letter|
  letter_count[letter] = statement.count(letter)
end 

puts letter_count

# Problem 9 #

words = "the flintstones rock"

def titlize(all_the_words)
  word_arr = all_the_words.split
  word_arr.map!{|word| word.capitalize }
  word_arr.join(' ')
end
new_words = titlize(words)
puts new_words

# Problem 10 #

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

munsters.each do |name, hashy|
  if hashy["age"] >= 65
    hashy['age group'] = 'senior'
  elsif hashy["age"] < 18
    hashy['age group'] = 'kid'
  else
    hashy['age group'] = 'adult'
  end
end 

puts munsters

