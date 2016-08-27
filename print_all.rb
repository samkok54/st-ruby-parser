require 'nokogiri'

doc = Nokogiri::XML(File.open("books.xml"))
doc.xpath('//book').each do

 |book|
 puts char_element.text 
end
