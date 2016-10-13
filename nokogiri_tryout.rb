require 'nokogiri'
require 'open-uri'

doc = Nokogiri::HTML(open('https://www.skillcrush.com'))

#puts doc.search("h1")
puts doc.methods # shows the methods that are available to Nokogiri
