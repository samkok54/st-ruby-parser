require 'nokogiri'

doc = Nokogiri::XML(File.open("books.xml"))
doc.xpath('//book').each do

 |book|
 puts "\n--> " + book.at_css('name').content
 puts "Author   : " + book.at_css('author').content
 puts "Price   : " + book.at_css('price').content
end
