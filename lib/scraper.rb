require 'nokogiri'
require 'open-uri'

# html = open("https://flatironschool.com/")

doc = Nokogiri::HTML(URI.open("http://flatironschool.com/"))

info = doc.css(".heading-50-black color-black")

info.each do |thing|
  puts thing.text.strip
end



