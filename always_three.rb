puts "Give me a number:"
number_1 = gets.chomp.to_i
magic_number = number_1
magic_number += 5
magic_number *= 2
magic_number -= 4
magic_number /= 2
magic_number -= number_1
puts magic_number
