require "nokogiri"
require "open-uri"

doc = Nokogiri::HTML(open("http://www.marthastewart.com/312598/brick-pressed-sandwich"))
# search = doc.css("ul")
# puts search
list = doc.css(".components-item")
# puts list
list.each do |ingredient|
    puts ingredient.inner_html
end
