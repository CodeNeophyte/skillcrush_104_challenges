def determine_current_hour
	current_time = Time.new
  #puts current_time
	current_hour = current_time.hour
  if(current_hour >= 3 && current_hour < 12)
    time = "morning"
  elsif(current_hour >= 12 && current_hour < 18)
    time = "afternoon"
  elsif(current_hour >=18 || current_hour < 3)
    time = "evening"
  end
  time
end

def greeting(first_name, last_name)
	time = determine_current_hour
  name = "#{first_name.capitalize} #{last_name.capitalize}"
	puts "Good #{time}, #{name}!"
end

def name_collector
  puts "What is your first name?"
  first_name = gets.chomp
  puts "what is your last name?"
  last_name = gets.chomp
  greeting(first_name, last_name)
end

name_collector()
