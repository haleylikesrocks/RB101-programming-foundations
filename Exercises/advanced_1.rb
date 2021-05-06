# 1 Madlibs Revisited


# # 2 Seeing Stars

# def star(num)
#   in_counter = num / 3
#   out_counter = 0

#   (num/2).times do
#     puts  ' ' * out_counter + '*' + ' ' * in_counter + '*' + ' ' * in_counter + '*'
#     in_counter -= 1
#     out_counter += 1
#   end
#   puts '*' * num
#   (num/2).times do
#     out_counter -= 1
#     in_counter += 1
#     puts  ' ' * out_counter + '*' + ' ' * in_counter + '*' + ' ' * in_counter + '*'
#   end
# end

# star(7)
# star(9)

# # 3 Transpose 3x3
# def transpose(arr)
#   [[arr[0][0], arr[1][0], arr[2][0]], [arr[0][1], arr[1][1], arr[2][1]], [arr[0][2], arr[1][2], arr[2][2]]]
# end

# matrix = [
#   [1, 5, 8],
#   [4, 7, 2],
#   [3, 9, 6]
# ]

# new_matrix = transpose(matrix)

# p new_matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
# p matrix == [[1, 5, 8], [4, 7, 2], [3, 9, 6]]


# # 4 Transpose MxN

# def transpose(matrix)
#   m = matrix.size - 1
#   n = (matrix[0]).size - 1
#   result = []
#   (0..n).each do |column_index|
#     new_row = (0..m).map { |row_index| matrix[row_index][column_index] }
#     result << new_row
#   end
#   result
# end

# p transpose([[1, 2, 3, 4]]) == [[1], [2], [3], [4]]
# p transpose([[1], [2], [3], [4]]) == [[1, 2, 3, 4]]
# p transpose([[1, 2, 3, 4, 5], [4, 3, 2, 1, 0], [3, 7, 8, 6, 2]]) ==
#   [[1, 4, 3], [2, 3, 7], [3, 2, 8], [4, 1, 6], [5, 0, 2]]
# p transpose([[1]]) == [[1]]


# # # 5 Rotating Matrices

# def rotate90(matrix)
#   result = []
#   (0...matrix[0].size).each do | num |
#     new_row = []
#     matrix.each do |row|
#       new_row.unshift(row[num])
#     end
#     result << new_row
#   end 
#   result
# end

# matrix1 = [
#   [1, 5, 8],
#   [4, 7, 2],
#   [3, 9, 6]
# ]

# matrix2 = [
#   [3, 7, 4, 2],
#   [5, 1, 0, 8]
# ]

# new_matrix1 = rotate90(matrix1)
# new_matrix2 = rotate90(matrix2)
# new_matrix3 = rotate90(rotate90(rotate90(rotate90(matrix2))))

# p new_matrix1 == [[3, 4, 1], [9, 7, 5], [6, 2, 8]]
# p new_matrix2 == [[5, 3], [1, 7], [0, 4], [8, 2]]
# p new_matrix3 == matrix2

# # 6 Fix the Bug

# def my_method(array)
#   if array.empty?
#     []
#   elsif array.size ==1
#     [7 * array.first]
#   else
#     array.map do |value|
#       value * value
#     end
#   end
# end

# p my_method([])
# p my_method([3])
# p my_method([3, 4])
# p my_method([5, 6, 7])

# # 7 Merged Sorted Lists
# def merge(lst1, lst2)
# end

# p merge([1, 5, 9], [2, 6, 8]) == [1, 2, 5, 6, 8, 9]
# p merge([1, 1, 3], [2, 2]) == [1, 1, 2, 2, 3]
# p merge([], [1, 4, 5]) == [1, 4, 5]
# p merge([1, 4, 5], []) == [1, 4, 5]

# 8 Merge Sort

# 9 Eyptain Franctions