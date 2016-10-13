require 'nokogiri'
require 'open-uri'

doc = Nokogiri::HTML(open("http://www.marthastewart.com/312598/brick-pressed-sandwich"))

list = doc.css('li.components-item')

list.each do |x|
  puts x
end
