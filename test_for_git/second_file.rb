# This is my initial work in second file

arr = [1,2,3,4,5]
puts "This is the original array: " + arr

new_arr = arr.map do |num|
  num*num
end

puts "This is the modified array: " + new_arr
