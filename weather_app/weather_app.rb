=begin
requirements
  1. user inputs location
  2. Public API with Barometer Gem
  3. return any of the 4 answer depending on weather
      If it’s sunny: it’s 85 degrees and sunny!
      If it’s cloudy: 55 degrees and crazy cloudy!
      If it’s rainy: 60 degrees and crazy rainy!
      If it’s snowy: 32 degrees and super snowy!
  4. add feature to forecast for 5 days
=end

# requires
require 'barometer'

# methods
def weather_finder(loc)
  barometer = Barometer.new(loc)
  weather = barometer.measure
  return weather.current.temperature.f
end

def condition_finder(loc)
  barometer = Barometer.new(loc)
  conditions = barometer.measure.current.condition
  return conditions
end

# variables
tomorrow = Time.now.strftime('%d').to_i + 1
dayName = ''

# main program - Today's weather
puts "What is your zipcode?"
location = gets.chomp

current_weather = weather_finder(location)
current_conditions = condition_finder(location)

puts "Your current temperature is #{current_weather} F, and it is #{current_conditions}."

# main program - Forecasting

forecast_barometer = Barometer.new(location)
forecast_barometer.measure.forecast.each do |forecast|
  day = forecast.starts_at.day

  if day == tomorrow
    dayName = 'Tomorrow'
  else
    dayName = forecast.starts_at.strftime('%A')
  end
  puts dayName + ' is going to be ' +
  forecast.icon + ' with a low of ' + forecast.low.f.to_s +
  ' and a high of ' + forecast.high.f.to_s
end
# loop do
#
# end
