# 1 Madlibs Revisited


# 2 Seeing Stars

def star(num)
  in_counter = num / 3
  out_counter = 0

  (num/2).times do
    puts  ' ' * out_counter + '*' + ' ' * in_counter + '*' + ' ' * in_counter + '*'
    in_counter -= 1
    out_counter += 1
  end
  puts '*' * num
  (num/2).times do
    out_counter -= 1
    in_counter += 1
    puts  ' ' * out_counter + '*' + ' ' * in_counter + '*' + ' ' * in_counter + '*'
  end
end

star(7)
star(9)


# 3 Transpose 3x3


# 4 Transpose MxN


# 5 Rotating Matrices

# 6 Fix the Bug


# 7 Merged Sorted Lists

# 8 Merge Sort

# 9 Eyptain Franctions