puts "Welcome to the numerology app. I will set you on your path of success for a better future!"
puts "Please enter your birthdate in the following format: MMDDYYYY"
birthdate = gets.chomp
#birth_count = 0
def reduce_birth date
  new_arr = date.to_s.split("")
  #puts new_arr[0]
  birth_count = 0
  new_arr.each do |num|
    num = num.to_i
    birth_count += num
    #puts birth_count
  end

  if birth_count >= 10
    reduce_birth(birth_count)
  else
    num_path(birth_count)
  end

end

def num_path number
  case number
  when 1
    puts "You number is #{number}."
    puts "One is the leader. The number one indicates the ability to stand alone, and is a strong vibration. Ruled by the Sun."
  when 2
    puts "You number is #{number}."
    puts "This is the mediator and peace-lover. The number two indicates the desire for harmony. It is a gentle, considerate, and sensitive vibration. Ruled by the Moon."
  when 3
    puts "You number is #{number}."
    puts "Number Three is a sociable, friendly, and outgoing vibration. Kind, positive, and optimistic, Three’s enjoy life and have a good sense of humor. Ruled by Jupiter."
  when 4
    puts "You number is #{number}."
    puts "This is the worker. Practical, with a love of detail, Fours are trustworthy, hard-working, and helpful. Ruled by Uranus."
  when 5
    puts "You number is #{number}."
    puts "This is the freedom lover. The number five is an intellectual vibration. These are ‘idea’ people with a love of variety and the ability to adapt to most situations. Ruled by Mercury."
  when 6
    puts "You number is #{number}."
    puts "This is the peace lover. The number six is a loving, stable, and harmonious vibration. Ruled by Venus."
  when 7
    puts "You number is #{number}."
    puts "This is the deep thinker. The number seven is a spiritual vibration. These people are not very attached to material things, are introspective, and generally quiet. Ruled by Neptune."
  when 8
    puts "You number is #{number}."
    puts "This is the manager. Number Eight is a strong, successful, and material vibration. Ruled by Saturn."
  when 9
    puts "You number is #{number}."
    puts "This is the teacher. Number Nine is a tolerant, somewhat impractical, and sympathetic vibration. Ruled by Mars."
  else
    puts "There was an error with your numbers. Please try again"
  end
end

reduce_birth(birthdate)
