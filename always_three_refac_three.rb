puts "Give me a number:"
number_1 = gets.chomp.to_i

def always_three(num)
  puts "Always #{(((((num + 5) * 2) - 4) / 2) - num )}!"
end

always_three(number_1)

# puts "Give me a number:"
# number_1 = gets.chomp.to_i
# magic_number = number_1
# magic_number += 5
# magic_number *= 2
# magic_number -= 4
# magic_number /= 2
# magic_number -= number_1
# puts magic_number

#make it 3 lines; use only 1 variable
